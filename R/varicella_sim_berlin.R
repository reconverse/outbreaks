#' Simulated varicella outbreak
#'
#' @section Background:
#' This dataset simulates an outbreak of varicella in german centers for foreigners. It is loosely based on
#' the situation in 2015, when the numbers of foreigners seeking asylum exeded the available places
#' in the center for foreigners. Varicella was the most frequent disease in these centers at that time.
#' comparable with kindergartens and other shelters.
#'
#' The data is useful to compute incidence rates.
#' @docType data
#'
#' @rdname varicella_sim_berlin
#'
#' @author Data simulated by Jakob Schumacher (\email{jakob.schumacher@web.de}). Transfer to R
#' and documentation by xxx .
#'
#' @references
#'
#' @section Building process:
#'
#' \preformatted{
#' set.seed(15)
#' library(randomNames) # load name generator package
#' # Simulate population with varicella in center for foreigners
#'
#' # Adjustable variables
#' cohortSize = 500
#' startDate = as.numeric(as.Date("2015-01-01", origin = "1970-01-01"))
#' endDate = as.numeric(as.Date("2015-12-31", origin = "1970-01-01"))
#' centerNames = c("Oranienburger Str", "Buchholzerstr", "Platz der Luftbruecke", "Bizetstr")
#' meanStay = 50
#' probVacc = 0.3 # The percentage of people vaccinated
#' dateOfInfection = as.Date("2015-05-06", origin = "1970-01-01")
#' affectedCenter = sample(centerNames, size = 1) # Any center name, default sample(centerNames, size = 1)
#'
#' # Intermediate variables
#' totalLength = endDate - startDate
#' probCenters <- runif(length(centerNames), 0, 1)
#'
#' # Create random personal data
#' data <- data.frame(name = randomNames(cohortSize, return.complete.data = TRUE))
#' data$age = round(runif(cohortSize, min = 0, max = 35),0)
#'
#' # Add centers with arrival and leave date
#' data$center1 = factor(sample(centerNames, size = cohortSize, replace = TRUE, prob = probCenters/sum(probCenters)))
#' data$arrival1 = (rpois(cohortSize, (totalLength / 3) + sample(c(totalLength/5, -totalLength/5))) + startDate)
#' data$leave1 = data$arrival1 + sample(rnorm(cohortSize, meanStay, sd = meanStay/2), size = cohortSize, replace = TRUE)
#' data$center2 = factor(sample(centerNames, size = cohortSize, replace = TRUE, prob = probCenters/sum(probCenters)))
#' data$arrival2 = data$leave1 + sample(5:15, size = cohortSize, replace = TRUE)
#' data$leave2 = data$arrival2 + sample(rnorm(cohortSize, meanStay, sd = meanStay/2), size = cohortSize, replace = TRUE)
#'
#' # Throw in a few background cases
#' data$onset = sample(c(startDate:endDate, rep(NA,totalLength*9)), size = cohortSize, replace = TRUE)
#'
#' # Generate an outbreak in one center
#' data$onset = ifelse(data$center1 == affectedCenter &
#'                      ((data$arrival1 < dateOfInfection &
#'                         data$leave1 > dateOfInfection) |
#'                       (data$arrival2 < dateOfInfection &
#'                          data$leave2 > dateOfInfection)),
#'                     rnorm(n = cohortSize, mean = (dateOfInfection + 14), sd = 8),
#'                     data$onset)
#'
#' data$onset <- as.Date(data$onset, origin = "1970-01-01")
#' data$arrival1 <- as.Date(data$arrival1, origin = "1970-01-01")
#' data$leave1 <- as.Date(data$leave1, origin = "1970-01-01")
#' data$arrival2 <- as.Date(data$arrival2, origin = "1970-01-01")
#' data$leave2 <- as.Date(data$leave2, origin = "1970-01-01")
#'
#' }
#'
#' @examples
#'
#'varicella_sim_berlin
#'
#'
#' @rdname varicella_sim_berlin
#'
"varicella_sim_berlin"




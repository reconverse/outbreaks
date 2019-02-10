#' Simulated varicella outbreak
#'
#' This simulated outbreak of varicella in german centers for foreigners is supposed to
#'
#' @docType data
#'
#' @rdname varicella_sim
#'
#' @author Data simulated by Jakob Schumacher (\email{jakob.schumacher@web.de}). Transfer to R
#' and documentation by xxx .
#'
#' @references
#'
#' @examples
#' ## identify mistakes in data entry (negative incubation period)
#' mistakes <- which(ebola_sim$linelist$date_of_onset <= ebola_sim$linelist$date_of_infection)
#' mistakes
#' ebola_sim$linelist[mistakes, ]
#'
#' ## check that ebola_sim_clean is identical after removing mistakes
#' identical(ebola_sim_clean$linelist, ebola_sim$linelist[-mistakes, ])
#'
"varicella_sim"

set.seed(15)
library(randomNames) # load name generator package
library(incidence)
library(ggplot2)
# Simulate population with varicella in center for foreigners

# Adjustable variables
cohortSize = 200
startDate = as.numeric(as.Date("2015-01-01", origing = "1970-01-01"))
endDate = as.numeric(as.Date("2015-12-31", origing = "1970-01-01"))
centerNames = c("Oranienburger Str", "Buchholzerstr", "Platz der Luftbruecke", "Bizetstr")
meanStay = 50
probVacc = 0.3
dateOfInfection = as.Date(16690, origin = "1970-01-01")

  # Intermediate variables
totalLength = endDate - startDate
probCenters <- runif(length(centerNames), 0, 1)

# Create random personal data
data <- data.frame(name = randomNames(cohortSize, return.complete.data = TRUE))
data$age = round(runif(cohortSize, min = 0, max = 35),0)

# Add centers with arrival and leave date
data$center1 = factor(sample(centerNames, size = cohortSize, replace = TRUE, prob = probCenters/sum(probCenters)))
data$arrival1 = (rpois(cohortSize, (totalLength / 3) + sample(c(totalLength/5, -totalLength/5))) + startDate)
data$leave1 = data$arrival1 + sample(rnorm(cohortSize, meanStay, sd = meanStay/2), size = cohortSize, replace = TRUE)
data$center2 = factor(sample(centerNames, size = cohortSize, replace = TRUE, prob = probCenters/sum(probCenters)))
data$arrival2 = data$leave1 + sample(5:15, size = cohortSize, replace = TRUE)
data$leave2 = data$arrival2 + sample(rnorm(cohortSize, meanStay, sd = meanStay/2), size = cohortSize, replace = TRUE)



# Lets vaccinate some people
data$vaccinated <- sample(c("yes", "no"), size = cohortSize, replace = TRUE, prob = c(probVacc, 1 - probVacc))

# Throw in a few background cases
data$case = ifelse(data$vaccinated == "no",
                   sample(c("case", "noCase"), size = cohortSize, replace = TRUE, prob = c(.1, .9)),
                   sample(c("case", "noCase"), size = cohortSize, replace = TRUE, prob = c(.01, .99)))
data$onset = ifelse(data$case == "case",
                    sample(16436:16800, size = cohortSize, replace = TRUE),
                    NA)




# Generate an outbreak in one center
data$onset = ifelse(data$center1 == sample(centerNames, size = 1) &
                     (data$arrival1 < dateOfInfection &
                        data$leave1 > dateOfInfection) |
                      (data$arrival2 < dateOfInfection &
                         data$leave2 > dateOfInfection) &
                      data$vaccinated == "no",
                    rnorm(n = cohortSize, mean = (dateOfInfection + 14), sd = 3),
                    data$onset)

data$onset <- as.Date(data$onset, origin = "1970-01-01")
data$arrival1 <- as.Date(data$arrival1, origin = "1970-01-01")
data$leave1 <- as.Date(data$leave1, origin = "1970-01-01")
data$arrival2 <- as.Date(data$arrival2, origin = "1970-01-01")
data$leave2 <- as.Date(data$leave2, origin = "1970-01-01")


dateVectors <- c("onset", "arrival1", "leave1", "arrival2", "leave2")
data[dateVectors]

cols.num <- c("a","b")
DF[cols.num] <- sapply(DF[cols.num],as.numeric)
sapply(DF, class)



#' @rdname varicella_sim
#'
"varicella_sim"

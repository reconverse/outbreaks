#' Norovirus in a primary school in Derbyshire, England, 2001
#'
#' These data describe an outbreak of norovirus in the summer of 2001 in a primary school and
#' nursery in Derbyshire, England.
#'
#' @docType data
#'
#' @format {
#' A data frame with 492 rows and 5 columns
#' \describe{
#'   \item{class}{School class of the child}
#'   \item{day_absent}{First day of absence from school}
#'   \item{start_illness}{First day of illness}
#'   \item{end_illness}{Last day of illnes}
#'   \item{day_vomiting}{Day of vomiting in school}
#' }
#'
#' The data on norovirus cases were analysed by O'Neill and Marks (2005). As described in the paper, out of a
#' total of 492 children in the school, 186 were absent from school with gastrointestinal symptoms.
#' The school was cleaned on days 13 and 14, and on days 20 and 21, both of which were weekends,
#' and the school was shut on days 18 and 19. Following the second cleaning, there were no further
#' absences, although three children reported symptoms on day 22, the last day of the outbreak.
#'
#' }
#'
#' @rdname norovirus_derbyshire_2001_school
#'
#' @author Data from O'Neill and Marks (2005), provided by Philip O'Neill.
#' Transfer to R and documentation by Simon Frost (\email{sdwfrost@@gmail.com}
#' and Finlay Campbell (\email{f.campbell15@@imperial.ac.uk})).
#'
#' @source O'Neill and Marks (2005)
#'
#' @references
#'
#' O’Neill, P. D., & Marks, P. J. (2005). Bayesian model choice and infection route modelling
#' in an outbreak of Norovirus. Statistics in Medicine, 24(13), 2011–24.
#'
#' @examples
#' ## show first few cases
#' head(norovirus_derbyshire_2001_school)
#'
"norovirus_derbyshire_2001_school"

#' Severe Acute Respiratory Syndrome in Canada, 2003
#'
#' These data comprise of new cases of SARS in Canada in 2003. These data are from Chapter 9 of De Vries et al. (1996).
#'
#' @docType data
#'
#' @format A data frame with 110 rows and 5 columns
#' \describe{
#'   \item{date}{Date}
#'   \item{cases_travel}{New cases attributed to travel}
#'   \item{cases_household}{New cases attributed to household transmission}
#'   \item{cases_healthcare}{New cases in a healthcare setting}
#'   \item{cases_other}{Other new cases}
#' }
#'
#' @rdname sars_canada_2003
#'
#' @author Data from De Vries et al. (2006), based on original data from Health Canada.
#' Transfer to R and documentation by Simon Frost (\email{sdwfrost@@gmail.com}).
#'
#' @source De Vries et al. (2006)
#'
#' @references
#'
#' G. De Vries, T. Hillen, M. Lewis, J. Mueller, and B. Schoenfisch. 2006.
#' A Course in Mathematical Biology: Quantitative Modeling with Mathematical and Computational Methods.
#' Society for Industrial and Applied Mathematics.
#'
#' @examples
#' ## show first few cases
#' head(sars_canada_2003)
#'
"sars_canada_2003"

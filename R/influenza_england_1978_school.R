#' Influenza in a boarding school in England, 1978
#'
#' These data comprise of a time series of influenza cases in a boarding school in England.
#' The original data were available only in a figure with some additional data in the main text;
#' hence, the exact numbers vary depending on the source. These data are from Chapter 9 of De Vries et al. (1996).
#'
#' The index case was infected by 1978-01-10, and had febrile illness from 1978-01-15 to 1978-01-18. 512 boys out of 763 became ill.
#'
#' @docType data
#'
#' @format A data frame with 14 rows and 3 columns
#' \describe{
#'   \item{date}{Date}
#'   \item{in_bed}{Number in bed}
#'   \item{convalescent}{Number convalescing}
#' }
#'
#' @rdname influenza_england_1978_school
#'
#' @author Data from De Vries et al. (2006), from the original Anonymous (1978) figure.
#' Transfer to R and documentation by Simon Frost (\email{sdwfrost@@gmail.com}).
#'
#' @source \url{http://www.ncbi.nlm.nih.gov/pmc/articles/PMC1603269/pdf/brmedj00115-0064.pdf}
#'
#' @references
#'
#' Anonymous. 1978. Influenza in a boarding school. British Medical Journal 1:578.
#'
#' G. De Vries, T. Hillen, M. Lewis, J. Mueller, and B. Schoenfisch. 2006.
#' A Course in Mathematical Biology: Quantitative Modeling with Mathematical and Computational Methods.
#' Society for Industrial and Applied Mathematics.
#'
#' @examples
#' ## show first few cases
#' head(influenza_england_1978_school)
#'
"influenza_england_1978_school"

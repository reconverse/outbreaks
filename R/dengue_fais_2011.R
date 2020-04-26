#' Dengue on the island of Fais, Micronesia, 2011 (new version)
#'
#' These data describe incidence of clinical cases of Dengue
#' on the island of Fais, Micronesia.
#'
#' The data on Dengue incidence reported by Funk et al. (2016) cover the period
#' from 2011-09-15 to 2012-02-14, over which time a total of 157 clinical cases
#' were reported among 294 residents. The first reported case is thought to be
#' the index case. The population of Fais is concentrated in a single population
#' centre, and is thought to have been immunologically naive at the time of
#' infection.
#'
##' # Licence
#' [CC BY](https://creativecommons.org/licenses/by/4.0/)
#'
#' @docType data
#'
#' @format A data frame with 57 rows and 2 columns
#' \describe{
#'   \item{date_of_onset}{First day of the onset week}
#'   \item{incidence}{Incidence is given as the number of new cases reported in the week beginning at \code{date_of_onset}}
#' }
#'
#' @rdname dengue_fais_2011
#'
#' @author
#' * Data from Funk et al. (2016), provided by [Sebastian Funk](https://github.com/sbnfunk).
#' * Transfer to R and documentation by Finlay Campbell (\email{finlaycampbell93@@gmail.com}).
#' * Refactoring by [Romain](https://github.com/romainx).
#'
#' @source Funk et al. (2016)
#'
#' @references
#' S. Funk, et al. 2016. Comparative Analysis of Dengue and Zika Outbreaks Reveals
#' Differences by Setting and Virus. PLOS Neglected Tropical Diseases, 10(12),
#' e0005173. <http://doi.org/10.1371/journal.pntd.0005173>
#'
#' @family dengue
#'
#' @seealso \code{\link{dengue_fais_2011_as_ts}}
#'
#' @examples
#' ## show first few weeks of Dengue incidence
#' head(dengue_fais_2011)
#'
"dengue_fais_2011"

#' Coerce the dataset to a `tsibble` object
#'
#' Ensure it is a valid timeseries (regular, ordered,
#' no duplication, no gaps)
#'
#' @return The dataset as a `tsibble` if the `tsibble` is installed, else the
#' dataset
#' @export
#'
#' @examples
#' dengue_fais_2011_as_ts()
dengue_fais_2011_as_ts <- function() {
  dengue_fais_2011 <- outbreaks::dengue_fais_2011
  if (requireNamespace("tsibble", quietly = TRUE)) {
      dengue_fais_2011 %>%
      tsibble::as_tsibble(index = "date_of_onset") %>%
      tsibble::fill_gaps()
  }
}

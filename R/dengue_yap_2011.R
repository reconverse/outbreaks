#' Dengue on the Yap Main Islands, Micronesia, 2011 (new version)
#'
#' These data describe incidence of clinical cases of Dengue
#' on the Yap Main Islands, Micronesia.
#'
#' The data on Dengue incidence reported by Funk et al. (2016) cover the period
#' from 2011-07-07 to 2012-04-12, over which time a total of 978 cases were
#' reported among 7391 residents. Suspected Dengue cases were identified by the
#' Yap Department of Health, using the WHO (2009) case definition. A small
#' proportion of cases (9%) were reported on outer islands and included in the
#' time series for the Yap Main Islands. Dengue virus serotype 2 was confirmed by
#' reverse transcriptase polymerase chain reaction by the CDC Dengue Branch,
#' Puerto Rico.
#'
##' # Licence
#' [CC BY](https://creativecommons.org/licenses/by/4.0/)
#'
#' @docType data
#'
#' @format A data frame with 185 rows and 2 columns
#' \describe{
#'   \item{date_of_onset}{First day of the onset week}
#'   \item{incidence}{Incidence is given as the number of new cases reported in the week beginning at \code{date_of_onset}}
#' }
#'
#' @rdname dengue_yap_2011
#'
#' @author
#' * Data from Funk et al. (2016), provided by [Sebastian Funk](https://github.com/sbnfunk).
#' * Transfer to R and documentation by Finlay Campbell (\email{finlaycampbell93@@gmail.com}).
#' * Refactoring by [Romain](https://github.com/romainx).
#'
#' @source
#' Funk et al. (2016)
#'
#' @references
#' S. Funk, et al. 2016. Comparative Analysis of Dengue and Zika Outbreaks Reveals
#' Differences by Setting and Virus. PLOS Neglected Tropical Diseases, 10(12),
#' e0005173. <http://doi.org/10.1371/journal.pntd.0005173>
#'
#' @family dengue
#'
#' @seealso \code{\link{dengue_yap_2011_as_ts}}
#'
#' @examples
#' # show first few weeks of Dengue incidence
#' head(dengue_yap_2011)
#'
"dengue_yap_2011"

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
#' dengue_yap_2011_as_ts()
dengue_yap_2011_as_ts <- function() {
  dengue_yap_2011 <- outbreaks::dengue_yap_2011
  if (requireNamespace("tsibble", quietly = TRUE)) {
      dengue_yap_2011 %>%
        tsibble::as_tsibble(index = "date_of_onset") %>%
        tsibble::fill_gaps()
  }
}

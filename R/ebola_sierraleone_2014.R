#' Ebola in Sierra Leone, 2014
#'
#' These data consist of confirmed and suspected cases of Ebola haemorrhagic
#' fever in Sierra Leone from 2014 to 2015.
#'
#' The linelist data reported by Fang et al. (2016) cover the period 2014-05-18
#' to 2015-09-13, over which time there were 8538 confirmed cases and 3545
#' suspected cases.
#'
#' # Licence
#' [PNAS Open Access](http://www.pnas.org/preview_site/misc/userlicense.xhtml)
#'
#' @docType data
#'
#' @format A data frame with 11,903 rows and 8 columns
#' \describe{
#'   \item{id}{Case ID}
#'   \item{age}{Age}
#'   \item{gender}{Gender ("male" or "female")}
#'   \item{status}{Case definition (confirmed or suspected)}
#'   \item{date_of_onset}{Date of symptom onset}
#'   \item{date_of_sample}{Date of sample testing}
#'   \item{district}{District}
#'   \item{chiefdom}{Chiefdom}
#' }
#
#' @rdname ebola_sierraleone_2014
#'
#' @author
#' * Data from Fang et al. (2016)
#' * Transfer to R and documentation by Finlay Campbell (\email{finlaycampbell93@@gmail.com}).
#' * Refactoring by [Romain](https://github.com/romainx).
#'
#' @source
#' Fang et al. (2016)
#'
#' @references
#' L. Fang, et al. 2016. Ebola virus disease in Sierra Leone. Proceedings of the
#' National Academy of Sciences, 113 (16) 4488-4493; DOI:
#' [10.1073/pnas.1518587113](https://www.pnas.org/content/early/2016/03/22/1518587113)
#'
#' @family ebola
#'
#' @examples
#' ## show first few cases
#' head(ebola_sierraleone_2014)
#'
"ebola_sierraleone_2014"


#' Coerce the dataset to a `tsibble` object
#'
#' Ensure it is a valid timeseries (regular, ordered,
#' no duplication, no gaps)
#'
#' @return The dataset as a `tsibble` if the `tsibble` is installed, else the
#' dataset
#'
#' @importFrom rlang .data
#'
#' @export
#'
#' @examples
#' \dontrun{
#' ebola_sierraleone_2014_as_ts() %>%
#' group_by_key() %>%
#' index_by(date = ~ yearweek(.)) %>%
#' summarise(incidence = sum(incidence)) %>%
#' ggplot(aes(x = date, y = incidence, color = status)) +
#' geom_line() +
#' geom_point()
#' }
ebola_sierraleone_2014_as_ts <- function() {
  ebola_sierraleone_2014 <- outbreaks::ebola_sierraleone_2014
  if (requireNamespace("tsibble", quietly = TRUE)) {
    ebola_sierraleone_2014 %>%
      dplyr::group_by(.data$date_of_onset, .data$status) %>%
      dplyr::summarise(incidence = dplyr::n()) %>%
      tsibble::as_tsibble(index = .data$date_of_onset, key = .data$status) %>%
      tsibble::fill_gaps()
  }
}

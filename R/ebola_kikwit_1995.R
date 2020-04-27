#' Ebola in Kikwit, Democratic Republic of the Congo, 1995
#'
#' These data comprise of new cases of Ebola haemorrhagic fever in Kikwit,
#' Democratic Republic of the Congo.
#'
#' The data on daily cases reported by Khan et al. (1999) cover the period 1995-03-01 to 1995-07-16,
#' over which time there were 292 cases and 236 deaths. The first case became ill on
#' 1995-01-06, which is taken as the first timepoint in this version of the data. Over the entire period,
#' there were 316 cases i.e. the onset times are not reported for 24 individuals, and the recovery times
#' for the individuals who did not die are not reported.
#'
#' # Licence
#' **Unknown**
#'
#' @docType data
#'
#' @format A data frame with 192 rows and 3 columns
#' \describe{
#'   \item{date_of_onset}{Date of onset}
#'   \item{incidence}{Number of new cases}
#'   \item{death}{Number of deaths per day}
#' }
#'
#' @rdname ebola_kikwit_1995
#'
#' @author
#' * Data from Khan et al. (1999), provided by T.J. McKinley.
#' * Transfer to R and documentation by Simon Frost (\email{sdwfrost@@gmail.com}).
#' * Refactoring by [Romain](https://github.com/romainx).
#'
#' @source
#' Khan et al. (1999)
#'
#' @references
#' A.S. Khan, et al. 1999. The reemergence of Ebola hemorrhagic fever,
#' Democratic Republic of the Congo, 1995. J Infect Dis 179:S76-S86.
#'
#' @family ebola
#'
#' @seealso \code{\link{ebola_kikwit_1995_as_ts}}
#'
#' @examples
#' ## show first few cases
#' head(ebola_kikwit_1995)
#'
"ebola_kikwit_1995"

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
#' ebola_kikwit_1995_as_ts()
ebola_kikwit_1995_as_ts <- function() {
  ebola_kikwit_1995 <- outbreaks::ebola_kikwit_1995
  if (requireNamespace("tsibble", quietly = TRUE)) {
    tsibble::as_tsibble(ebola_kikwit_1995, index = .data$date_of_onset)
  }
}

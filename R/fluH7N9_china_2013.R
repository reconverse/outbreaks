#' Influenza A H7N9 in China, 2013
#'
#' These data comprise of 136 cases of influenza A H7N9 in China, analysed by Kucharski et al. (2014).
#'
#' # Licence
#' [CC0 1.0 Universal (CC0 1.0) Public Domain Dedication](https://creativecommons.org/publicdomain/zero/1.0/)
#'
#' @docType data
#'
#' @format A data frame with 136 rows and 8 columns
#' \describe{
#'   \item{id}{Case ID}
#'   \item{date_of_onset}{Date of symptom onset}
#'   \item{date_of_hospitalisation}{Date of hospitalisation}
#'   \item{date_of_outcome}{Date of outcome}
#'   \item{outcome}{Outcome (death, recover)}
#'   \item{gender}{Gender ("male" or "female")}
#'   \item{age}{Age}
#'   \item{province}{Province}
#' }
#'
#' @rdname fluH7N9_china_2013
#'
#' @author
#' * Data collated by Adam Kucharski et al. from ProMed, WHO, FluTrackers, news reports and research articles.
#' * Transfer to R and documentation by Simon Frost (\email{sdwfrost@@gmail.com}).
#' * Refactoring by [Romain](https://github.com/romainx).
#'
#' @source \url{http://datadryad.org/resource/doi:10.5061/dryad.2g43n/1}
#'
#' @references
#' A. Kucharski, H. Mills, A. Pinsent, C. Fraser, M. Van Kerkhove, C. A. Donnelly, and S. Riley. 2014.
#' Distinguishing between reservoir exposure and human-to-human transmission for emerging pathogens using case onset data.
#' PLOS Currents Outbreaks. Mar 7, edition 1. doi: 10.1371/currents.outbreaks.e1473d9bfc99d080ca242139a06c455f.
#'
#' A. Kucharski, H. Mills, A. Pinsent, C. Fraser, M. Van Kerkhove, C. A. Donnelly, and S. Riley. 2014.
#' Data from: Distinguishing between reservoir exposure and human-to-human transmission for emerging pathogens using case onset data.
#' [Dryad Digital Repository](http://dx.doi.org/10.5061/dryad.2g43n).
#'
#' @family influenza
#'
#' @examples
#' ## show first few cases
#' head(fluH7N9_china_2013)
#'
"fluH7N9_china_2013"

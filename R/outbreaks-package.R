# Import from tibble in order to get consistent behaviour regardless of
# whether or not tibble is attached.
#' @importFrom tibble tibble
NULL


#' Load legacy version (v1.x) of datasets.
#'
#' Load legacy (previous) version of all the datasets for compatibility reason.
#' The environment where data will be loaded can be chosen.
#'
#' @param envdir the environment where the data should be loaded.
#' @param verbose should item names be printed during loading?
#'
#' @export
#'
#' @examples
#' \dontrun{
#' # Default version
#' head(dengue_fais_2011)
#'
#' # A tibble: 6 x 2
#' #  date_of_onset incidence
#' #  <date>            <dbl>
#' # 1 2011-09-15            0
#' # 2 2011-09-22            0
#' # 3 2011-09-29            0
#'
#' # Activate the compatibility mode
#' legacy_mode()
#'
#' # Loading objects:
#' #  dengue_fais_2011
#' # Warning message:
#' # This function replaces datasets with the previous (legacy) version for compatibility reason
#'
#' # Back to legacy (previous) version
#' head(dengue_fais_2011)
#'
#' # A tibble: 6 x 3
#' #  onset_date    nr value
#' #  <date>     <dbl> <dbl>
#' # 1 2011-09-15     7     0
#' # 2 2011-09-22    14     0
#' # 3 2011-09-29    21     0
#' }
legacy_mode <- function(envdir = parent.frame(), verbose = TRUE) {
  .Deprecated(msg = "This function replaces datasets with the previous (legacy) version for compatibility reason")
  # TODO: To be improved to load a subset of datasets
  paths <- sort(Sys.glob(c("data-raw/leg_*.rda", "data-raw/leg_*.RData")))
  for (i in 1:length(paths)) {
    load(paths[i], envir = envdir, verbose = verbose)
  }
}

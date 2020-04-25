#' Zika on the Yap Main Islands, Micronesia, 2007 (new version)
#'
#' These data describe weekly incidence of probable and confirmed cases of Zika virus
#' on the Yap Main Islands, Micronesia.
#'
#' The data on weekly cases reported by Funk et al. (2016) cover the period from
#' 2007-02-18 to 2007-09-02, over which time there were a total of 108 cases
#' classified as probable (59) or confirmed (49) in a population of 7391. Cases
#' were identified by a combination of prospective and retrospective
#' surveillance at all health centres on Yap.
#'
#' # Licence
#' [CC BY](https://creativecommons.org/licenses/by/4.0/)
#'
#' @docType data
#'
#' @format A data frame with 29 rows and 2 columns
#' \describe{
#'   \item{date_of_onset}{First day of the onset week}
#'   \item{incidence}{Incidence is given as the number of new cases reported in the week beginning at \code{date_of_onset}}
#' }
#'
#' @rdname zika_yap_2007
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
#' @examples
#' ## show first few weeks of Zika incidence
#' head(zika_yap_2007)
#'
"zika_yap_2007"

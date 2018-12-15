#' Nipah in Malaysia and Sinagapore, 1997-1999
#'
#' These data describe incidence of human cases of Nipah virus encephalitis
#' in Malaysia and Singapore from January 1997 through April 1999.
#'
#' @docType data
#'
#' @format {
#' A data frame with 49 rows and 5 columns
#' \describe{
#'   \item{date}{Onset date (weekly)}
#'   \item{perak}{Number of cases (Perak State, Malaysia)}
#'   \item{negeri_sembilan}{Number of cases (Negeri Sembilan State, Malaysia)}
#'   \item{selangor}{Number of cases (Selangor State, Malaysia)}
#'   \item{singapore}{Number of cases (Singapore)}
#' }
#'
#' Nipah virus is a paramyxovirus that occurs in flying fox (fruit bat) populations
#' throughout Asia. The data provided are from the first known emergence of Nipah
#' virus into humans. During this outbreak, the virus was transmitted from bats to
#' pigs, where it circulated in commercial pig farms, infecting mostly farm and
#' abbatoir workers. The outbreak started in Perak State, later spreading
#' to Negeri Sembilan and Seleangor through sale of infected pigs. There were
#' also 11 cases reported among abbatoir workers in Singapor. The data, as published
#' in Pulliam _et al_. (2011), include all 257 clinical cases recorded in humans from
#' 1997-01-11 to 1999-04-14, when the outbreak ended following large-scale
#' depopulation of pig farms. Human cases represent zoonotic infections, with little
#' or no human-to-human transmission. Thus, the epidemic curve reflects transmission
#' and spatial spread within pigs.
#'
#' }
#' @rdname nipah_malaysia
#'
#' @author Data from Funk et al. (2016), provided by Juliet Pulliam
#'  (github.com/jrcpulliam).
#'
#' @source Pulliam et al. (2011)
#'
#' @references
#'
#' J.R.C. Pulliam, et al. 2011. Agricultural intensification, priming for persistence and
#'  the emergence of Nipah virus: a lethal bat-borne zoonosis. _Journal of the Royal
#'  Society Interface_, 9(66), 20110223. https://doi.org/10.1098/rsif.2011.0223
#'
#'
#' @examples
#' ## show first few weeks of Dengue incidence
#' head(nipah_malaysia)
#'
#' ## convert data to incidence object and plot epicurve using the incidence package
#' library(incidence)
#' cases <- subset(nipah_malaysia, select = c("perak", "negeri_sembilan", "selangor",
#'  "singapore"))
#' i <- as.incidence(cases, dates = nipah_malaysia$date, interval = 7L)
#' plot(i)
#'
"nipah_malaysia"

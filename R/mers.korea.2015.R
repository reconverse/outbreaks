#'  2015 Middle East respiratory syndrome outbreak in South Korea
#'
#'  These datasets correspond to the initial information collected by the Epidemic Intelligence
#'  group at European Centre for Disease Prevention and Control (ECDC) during the first weeks of the
#'  outbreak of Middle East respiratory syndrome (MERS-CoV) outbreak (South Korea) in 2015.  The
#'  data were used to follow the daily evolution of this outbreak using public information
#'  available.
#'
#'  This dataset is used for teaching purposes. This example represents neither the final outbreak investigation
#'  results nor a consolidated and complete description of the transmission chain.
#'
#' @docType data
#'
#' @format A list of two dataframes
#' \describe{
#'   \item{mers.korea.2015[[1]]}{A dataframe of MERS-CoV cases and their attributes}
#'     \itemize{
#'       \item{id}{Unique identifier}
#'       \item{age}{Age}
#'       \item{age_class}{Age using 10-year groups}
#'       \item{sex}{Sex}
#'       \item{place_infect}{Probable region of infection}
#'       \item{reporting_ctry}{Country reporting the case}
#'       \item{loc_hosp}{Local hospital name where the case was hospitalized}
#'       \item{dt_onset}{Date of onset of symptoms}
#'       \item{dt_report}{Date of reporting}
#'       \item{week_report}{Week number of date of reporting}
#'       \item{dt_start_exp}{Date of first probable exposure to another MERS Co-V case}
#'       \item{dt_end_exp}{Date of last probable exposure to another MERS Co-V case}
#'       \item{dt_diag}{Date of MERS Co-V diagnosis}
#'       \item{dt_death}{Date of death}
#'     }
#'
#'  \item{mers.korea.2015[[2]]}{A dataframe describing the relationship between MERS Co-V cases}
#'    \itemize{
#'      \item{from}{Unique identifier of the probably source patient}
#'      \item{to}{Unique identifier of the secondary case}
#'      \item{exposure}{Probable place of exposure}
#'      \item{diff_dt_onset}{Time in days between two successive cases}
#'    }
#' }
#'
#' @rdname mers.korea.2015
#'
#' @aliases mers.korea.2015
#'
#' @author Data collected by the European Centre for Disease Prevention and Control (Epidemic
#' Intelligence and Response section, contact: Bertrand Sudre (\email{
#' bertrand.sudre@ecdc.europa.eu}) and Kaja Kaasik Aaslav(\email{Kaja.KaasikAaslav@ecdc.europa.eu}).
#' Transfer to R and documentation by Bertrand Sudre (\email{ bertrand.sudre@ecdc.europa.eu}).
#'
#' @references More information on the intial stage of the outbreak in the following reference:
#' Penttinen PM, Kaasik-Aaslav K, Friaux A, Donachie A, Sudre B, Amato-Gauci AJ, Memish ZA,
#' Coulombier D. Taking stock of the first 133 MERS coronavirus cases globally--Is the epidemic
#' changing?  Euro Surveill. 2013 Sep 26;18(39). pii: 20596. PubMed PMID: 24094061.
#'
#' @examples
#' ## show the line list describing MERS Co-V cases and their attributes
#' head(mers.korea.2015[[1]])
#'
#' ## show the relationships between MERS Co-V cases
#' head(mers.korea.2015[[2]])
#'
"mers.korea.2015"



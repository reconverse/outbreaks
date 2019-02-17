#' Simulated varicella outbreak
#'
#' @section Background:
#' This dataset is useful to compute incidence rates.
#'
#' This dataset simulates an outbreak of varicella in german centers for foreigners. It is loosely based on
#' the situation in 2015, when the numbers of foreigners seeking asylum exeded the available places
#' in the center for foreigners. Varicella was the most frequent disease in these centers at that time.
#' comparable with kindergartens and other shelters.
#'
#' Description of infectious diseases in people seeking asylum in Germany in 2017 of Robert Koch-Institute, Berlin, Germany:
#' https://www.rki.de/DE/Content/Gesundheitsmonitoring/Gesundheitsberichterstattung/GesundAZ/Content/A/Asylsuchende/Asylsuchende.html
#'
#' The dataset was created by the package outbreakcreator https://github.com/jakobschumacher/outbreakcreator/.
#'
#' @docType data
#'
#' @rdname varicella_sim_berlin
#'
#' @author Data simulated by Jakob Schumacher (\email{jakob.schumacher@web.de}).
#'
#'
#' @format {
#' A data frame with 500 rows and 13 columns
#' \describe{
#'   \item{sex}{The gender of the simulated persons}
#'   \item{ethnicity}{Simulated ethnical origin}
#'   \item{firstname}{First names of the simulated persons}
#'   \item{lastname}{Last names of the simulated persons}
#'   \item{age}{Age of the simulated persons}
#'   \item{center1}{Name of the first center where the simulated persons stay}
#'   \item{arrival1}{Date of arrival at the first center}
#'   \item{leave1}{Date of departure at the first center}
#'   \item{center2}{Name of the second center where the simulated persons stay}
#'   \item{arrival2}{Date of arrival at the second center}
#'   \item{leave2}{Date of departure at the second center}
#'   \item{onset}{Date of onset of the disease}
#'   \item{disease}{Name of the disease}
#' }
#' }
#'
#' @examples
#'
#'varicella_sim_berlin
#'
#'
#' @rdname varicella_sim_berlin
#'
"varicella_sim_berlin"




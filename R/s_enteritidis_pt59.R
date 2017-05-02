#' Salmonella Enteritidis PT59 outbreak
#'
#' This dataset covers a food-borne outbreak of Salmonella Enteritidis PT59
#' investigated by Public Health England. The data includes a distribution
#' network, and genetic clusters of bacteria isolated in contaminated
#' patients. The data is anonymised: identifiers of the food distribution
#' network have been hashed. The object \code{s_enteritidis_pt59} is a list
#' containing:
#'
#' \itemize{
#'
#' \item \code{$graph}: a \code{data.frame} containing with two columns
#' \code{from} and \code{to} specifying (directed) edges of the food
#' distribution network, alongside reported cases (terminal branches, or 'tips').
#'
#' \item \code{$cluster}: a \code{factor} indicating the genetic cluster of
#' named tips.
#' 
#' }
#'
#' @docType data
#' 
#' @source Multi-agency Salmonella Enteritidis PT59 Outbreak Control Team,
#' chaired by Public Health England
#' 
#' @author Thomas Inns \email{Thomas.Inns@@phe.gov.uk}, Philip Ashton, Tim
#' Dallman, Roberto Vivancos. Hashing and port to R by Thibaut Jombart.
#' 
#' @keywords datasets
#'
"s_enteritidis_pt59"



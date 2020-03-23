#' SARS-CoV-2 World Health Organization Situation Reports 2019 Outbreak (COVID-19)
#'
#' These data are transcribed from the WHO Situation Reports on the COVID-19
#' outbreak (SARS-CoV-2). Data was not available for all variables in all 
#' reports. For full details, see the original Situation Reports as published 
#' by WHO. Data were manually transcribed and errors are possible.
#' 
#' @docType data
#' @format A data frame where each row represents a new Situation Report
#'
#' @rdname sarscov2_who_2019
#'
#' @author Data from World Health Organization (WHO), published as Sitation
#' Reports. Transfer to R and documentation by Eric Brown.
#'
#' @source World Health Organization (2020)
#'
#' @references
#'
#' World Health Organization. 2020. <https://www.who.int/emergencies/diseases/novel-coronavirus-2019/situation-reports>
#'
#' @examples
#' ## show global cases
#' sarscov2_who_2019$cases_global
#'
"sarscov2_who_2019"

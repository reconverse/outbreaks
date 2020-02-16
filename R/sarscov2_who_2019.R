#' SARS-CoV-2 World Health Organization Situation Reports 2019 Outbreak (COVID-19)
#'
#' These data are transcribed from the WHO Situation Reports on the COVID-19
#' outbreak (SARS-CoV-2). Data was not available for all variables in all 
#' reports. For full details, see the original Situation Reports as published 
#' by WHO. Data were manually transcribed and errors are possible.
#' 
#' @docType data
#'
#' @format A data frame with 26 rows and 80 columns
#' \describe{
#'   \item{situation_report}{WHO Situation Report number}
#'   \item{date}{Date of Situation Report}
#'   \item{cases_chn}{Number of confirmed cases in China}
#'   \item{cases_jpn}{Number of confirmed cases in Japan}
#'   \item{cases_kor}{Number of confirmed cases in Republic of Korea}
#'   \item{cases_vnm}{Number of confirmed cases in Viet Nam}
#'   \item{cases_sgp}{Number of confirmed cases in Singapore}
#'   \item{cases_aus}{Number of confirmed cases in Australia}
#'   \item{cases_mys}{Number of confirmed cases in Malaysia}
#'   \item{cases_khm}{Number of confirmed cases in Cambodia}
#'   \item{cases_phl}{Number of confirmed cases in Philippines}
#'   \item{cases_tha}{Number of confirmed cases in Thailand}
#'   \item{cases_npl}{Number of confirmed cases in Nepal}
#'   \item{cases_lka}{Number of confirmed cases in Sri Lanka}
#'   \item{cases_ind}{Number of confirmed cases in India}
#'   \item{cases_usa}{Number of confirmed cases in United States of America}
#'   \item{cases_can}{Number of confirmed cases in Canada}
#'   \item{cases_fin}{Number of confirmed cases in Finland}
#'   \item{cases_fra}{Number of confirmed cases in France}
#'   \item{cases_deu}{Number of confirmed cases in Germany}
#'   \item{cases_ita}{Number of confirmed cases in Italy}
#'   \item{cases_rus}{Number of confirmed cases in Russian Federation}
#'   \item{cases_esp}{Number of confirmed cases in Spain}
#'   \item{cases_swe}{Number of confirmed cases in Sweden}
#'   \item{cases_gbr}{Number of confirmed cases in United Kingdom}
#'   \item{cases_bel}{Number of confirmed cases in Belgium}
#'   \item{cases_are}{Number of confirmed cases in United Arab Emirates}
#'   \item{cases_egy}{Number of confirmed cases in Egypt}
#'   \item{cases_internationconveyance}{Number of confirmed cases in Diamond Princess}
#'   \item{cases_global}{Number of confirmed cases globally}
#'   \item{suspected_chn}{Number of suspected cases in China}
#'   \item{severe_chn}{Number of severe cases in China}
#'   \item{deaths_chn}{Number of deaths in China}
#'   \item{critical_chn}{Number of critical cases in China}
#'   \item{clinical_chn_hubei}{Number of additional only clinically confirmed cases in Hubei, China}
#'   \item{cases_outside_chn}{Number of confirmed cases outside of China}
#'   \item{countries_outside_chn}{Number of confirmed countries excluding China}
#'   \item{deaths_outside_chn}{Number of deaths outside China}
#'   \item{cases_outside_chn_wuhan_travel_history}{Number of cases outside China with a travel history to Wuhan}
#'   \item{cases_outside_chn_chn_travel_history}{Number of cases outside China with a travel history to China}
#'   \item{risk_chn}{WHO Risk Assessment for China}
#'   \item{risk_regional}{WHO Risk Assessment for Region}
#'   \item{risk_global}{WHO Risk Assessment for Globe}
#'   \item{cases_health_care_workers}{Cases of health care workers}
#'   \item{cases_chn_wuhan}{Number of confirmed cases in Wuhan (city), China}
#'   \item{cases_chn_hubei}{Number of confirmed cases in Hubei, China}
#'   \item{cases_chn_guangdong}{Number of confirmed cases in Guangdong, China}
#'   \item{cases_chn_beijing}{Number of confirmed cases in Beijing, China}
#'   \item{cases_chn_shanghai}{Number of confirmed cases in Shanghai, China}
#'   \item{cases_chn_chongqing}{Number of confirmed cases in Chongqing, China}
#'   \item{cases_chn_zhejiang}{Number of confirmed cases in Zhejiang, China}
#'   \item{cases_chn_jiangxi}{Number of confirmed cases in Jiangxi, China}
#'   \item{cases_chn_sichuan}{Number of confirmed cases in Sichuan, China}
#'   \item{cases_chn_tianjin}{Number of confirmed cases in Tianjin, China}
#'   \item{cases_chn_henan}{Number of confirmed cases in Henan, China}
#'   \item{cases_chn_hunan}{Number of confirmed cases in Hunan, China}
#'   \item{cases_chn_shandong}{Number of confirmed cases in Shandong, China}
#'   \item{cases_chn_yunnan}{Number of confirmed cases in Yunnan, China}
#'   \item{cases_chn_taiwan}{Number of confirmed cases in Taiwan, China}
#'   \item{cases_chn_taipei}{Number of confirmed cases in Taipei, China}
#'   \item{cases_chn_hkg}{Number of confirmed cases in Hong Kong}
#'   \item{cases_chn_mac}{Number of confirmed cases in Macao}
#'   \item{cases_chn_unspecified}{Number of confirmed cases in unspecified regions of China}
#'   \item{cases_chn_anhui}{Number of confirmed cases in Anhui, China}
#'   \item{cases_chn_jiangsu}{Number of confirmed cases in Jiangsu, China}
#'   \item{cases_chn_fujian}{Number of confirmed cases in Fujian, China}
#'   \item{cases_chn_shaanxi}{Number of confirmed cases in Shaanxi, China}
#'   \item{cases_chn_guangxi}{Number of confirmed cases in Guangxi, China}
#'   \item{cases_chn_hebei}{Number of confirmed cases in Hebei, China}
#'   \item{cases_chn_heilongjiang}{Number of confirmed cases in Heilongjiang, China}
#'   \item{cases_chn_liaoning}{Number of confirmed cases in Liaoning, China}
#'   \item{cases_chn_hainan}{Number of confirmed cases in Hainan, China}
#'   \item{cases_chn_shanxi}{Number of confirmed cases in Shanxi, China}
#'   \item{cases_chn_gansu}{Number of confirmed cases in Gansu, China}
#'   \item{cases_chn_guizhou}{Number of confirmed cases in Guizhou, China}
#'   \item{cases_chn_ningxia}{Number of confirmed cases in Ningxia, China}
#'   \item{cases_chn_mng}{Number of confirmed cases in Inner Mongolia}
#'   \item{cases_chn_xinjiang}{Number of confirmed cases in Xinjiang, China}
#'   \item{cases_chn_jilin}{Number of confirmed cases in Jilin, China}
#'   \item{cases_chn_qinghai}{Number of confirmed cases in Qinghai, China}
#'   \item{cases_chn_xizang}{Number of confirmed cases in Xizang, China}
#' }
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

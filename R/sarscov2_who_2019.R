#' SARS-CoV-2 World Health Organization Situation Reports 2019 Outbreak (COVID-19)
#'
#' These data are transcribed from the WHO Situation Reports on the COVID-19
#' outbreak (SARS-CoV-2). Data was not available for all variables in all 
#' reports. For full details, see the original Situation Reports as published 
#' by WHO. Data were manually transcribed and errors are possible.
#' 
#' @docType data
#'
#' @format A data frame with 45 rows and 80 columns
#' \describe{
#'   \item{situation_report}{WHO Situation Report number}
#'   \item{date}{Date of Situation Report}
#'   \item{cases_chn}{Number of confirmed cases in China (including clinically confirmed cases as of SR 28/2020-02-17)}
#'   \item{cases_jpn}{Number of confirmed cases in Japan}
#'   \item{cases_kor}{Number of confirmed cases in Republic of Korea}
#'   \item{cases_vnm}{Number of confirmed cases in Viet Nam}
#'   \item{cases_sgp}{Number of confirmed cases in Singapore}
#'   \item{cases_aus}{Number of confirmed cases in Australia}
#'   \item{cases_mys}{Number of confirmed cases in Malaysia}
#'   \item{cases_khm}{Number of confirmed cases in Cambodia}
#'   \item{cases_nzl}{Number of confirmed cases in New Zealand}
#'   \item{cases_phl}{Number of confirmed cases in Philippines}
#'   \item{cases_tha}{Number of confirmed cases in Thailand}
#'   \item{cases_npl}{Number of confirmed cases in Nepal}
#'   \item{cases_lka}{Number of confirmed cases in Sri Lanka}
#'   \item{cases_ind}{Number of confirmed cases in India}
#'   \item{cases_idn}{Number of confirmed cases in Indonesia}
#'   \item{cases_usa}{Number of confirmed cases in United States of America}
#'   \item{cases_can}{Number of confirmed cases in Canada}
#'   \item{cases_bra}{Number of confirmed cases in Brazil}
#'   \item{cases_mex}{Number of confirmed cases in Mexico}
#'   \item{cases_ecu}{Number of confirmed cases in Ecuador}
#'   \item{cases_dom}{Number of confirmed cases in Dominican Republic}
#'   \item{cases_maf}{Number of confirmed cases in Saint Martin}
#'   \item{cases_blm}{Number of confirmed cases in Saint Barthelemy}
#'   \item{cases_arg}{Number of confirmed cases in Argentina}
#'   \item{cases_chl}{Number of confirmed cases in Chile}
#'   \item{cases_fin}{Number of confirmed cases in Finland}
#'   \item{cases_hrv}{Number of confirmed cases in Croatia}
#'   \item{cases_aut}{Number of confirmed cases in Austria}
#'   \item{cases_dnk}{Number of confirmed cases in Denmark}
#'   \item{cases_est}{Number of confirmed cases in Estonia}
#'   \item{cases_geo}{Number of confirmed cases in Georgia}
#'   \item{cases_grc}{Number of confirmed cases in Greece}
#'   \item{cases_mkd}{Number of confirmed cases in North Macedonia}
#'   \item{cases_nor}{Number of confirmed cases in Norway}
#'   \item{cases_rou}{Number of confirmed cases in Romania}
#'   \item{cases_che}{Number of confirmed cases in Switzerland}
#'   \item{cases_blr}{Number of confirmed cases in Belarus}
#'   \item{cases_ltu}{Number of confirmed cases in Lithuania}
#'   \item{cases_nld}{Number of confirmed cases in Netherlands}
#'   \item{cases_smr}{Number of confirmed cases in San Marino}
#'   \item{cases_aze}{Number of confirmed cases in Azerbaijan}
#'   \item{cases_irl}{Number of confirmed cases in Ireland}
#'   \item{cases_mco}{Number of confirmed cases in Monaco}
#'   \item{cases_cze}{Number of confirmed cases in Czechia}
#'   \item{cases_isl}{Number of confirmed cases in Iceland}
#'   \item{cases_arm}{Number of confirmed cases in Armenia}
#'   \item{cases_lux}{Number of confirmed cases in Luxembourg}
#'   \item{cases_prt}{Number of confirmed cases in Portugal}
#'   \item{cases_and}{Number of confirmed cases in Andorra}
#'   \item{cases_lva}{Number of confirmed cases in Latvia}
#'   \item{cases_pol}{Number of confirmed cases in Poland}
#'   \item{cases_ukr}{Number of confirmed cases in Ukraine}
#'   \item{cases_lie}{Number of confirmed cases in Liechtenstein}
#'   \item{cases_bih}{Number of confirmed cases in Bosnia and Herzegovina}
#'   \item{cases_hun}{Number of confirmed cases in Hungary}
#'   \item{cases_svn}{Number of confirmed cases in Slovenia}
#'   \item{cases_gib}{Number of confirmed cases in Gibraltar}
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
#'   \item{cases_irn}{Number of confirmed cases in Iran}
#'   \item{cases_lbn}{Number of confirmed cases in Lebanon}
#'   \item{cases_isr}{Number of confirmed cases in Isreal}
#'   \item{cases_kwt}{Number of confirmed cases in Kuwait}
#'   \item{cases_afg}{Number of confirmed cases in Afghanistan}
#'   \item{cases_bhr}{Number of confirmed cases in Bahrain}
#'   \item{cases_irq}{Number of confirmed cases in Iraq}
#'   \item{cases_omn}{Number of confirmed cases in Oman}
#'   \item{cases_pak}{Number of confirmed cases in Pakistan}
#'   \item{cases_qat}{Number of confirmed cases in Qatar}
#'   \item{cases_jor}{Number of confirmed cases in Jordan}
#'   \item{cases_mar}{Number of confirmed cases in Morocco}
#'   \item{cases_sau}{Number of confirmed cases in Saudi Arabia}
#'   \item{cases_tun}{Number of confirmed cases in Tunisia}
#'   \item{cases_pse}{Number of confirmed cases in Palestine}
#'   \item{cases_dza}{Number of confirmed cases in Algeria}
#'   \item{cases_nga}{Number of confirmed cases in Nigeria}
#'   \item{cases_sen}{Number of confirmed cases in Senegal}
#'   \item{cases_internationconveyance}{Number of confirmed cases in Diamond Princess}
#'   \item{cases_global}{Number of confirmed cases globally}
#'   \item{suspected_chn}{Number of suspected cases in China}
#'   \item{severe_chn}{Number of severe cases in China}
#'   \item{deaths_chn}{Number of deaths in China}
#'   \item{deaths_phl}{Number of deaths in Philippines}
#'   \item{deaths_jpn}{Number of deaths in Japan}
#'   \item{deaths_fra}{Number of deaths in France}
#'   \item{deaths_kor}{Number of deaths in Korea}
#'   \item{deaths_irn}{Number of deaths in Iran}
#'   \item{deaths_ita}{Number of deaths in Italy}
#'   \item{deaths_aus}{Number of confirmed deaths in Australia}
#'   \item{deaths_tha}{Number of confirmed deaths in Thailand}
#'   \item{deaths_usa}{Number of confirmed deaths in United States of America}
#'   \item{deaths_irq}{Number of confirmed deaths in Iraq}
#'   \item{deaths_esp}{Number of confirmed deaths in Spain}
#'   \item{deaths_internationalconveyance}{Number of deaths on Diamond Princess}
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
#'   \item{deaths_chn_hubei}{Number of confirmed deaths in Hubei, China}
#'   \item{deaths_chn_guangdong}{Number of confirmed deaths in Guangdong, China}
#'   \item{deaths_chn_beijing}{Number of confirmed deaths in Beijing, China}
#'   \item{deaths_chn_shanghai}{Number of confirmed deaths in Shanghai, China}
#'   \item{deaths_chn_chongqing}{Number of confirmed deaths in Chongqing, China}
#'   \item{deaths_chn_zhejiang}{Number of confirmed deaths in Zhejiang, China}
#'   \item{deaths_chn_jiangxi}{Number of confirmed deaths in Jiangxi, China}
#'   \item{deaths_chn_sichuan}{Number of confirmed deaths in Sichuan, China}
#'   \item{deaths_chn_tianjin}{Number of confirmed deaths in Tianjin, China}
#'   \item{deaths_chn_henan}{Number of confirmed deaths in Henan, China}
#'   \item{deaths_chn_hunan}{Number of confirmed deaths in Hunan, China}
#'   \item{deaths_chn_shandong}{Number of confirmed deaths in Shandong, China}
#'   \item{deaths_chn_yunnan}{Number of confirmed deaths in Yunnan, China}
#'   \item{deaths_chn_taipei}{Number of confirmed deaths in Taipei, China}
#'   \item{deaths_chn_hkg}{Number of confirmed deaths in Hong Kong}
#'   \item{deaths_chn_mac}{Number of confirmed deaths in Macao}
#'   \item{deaths_chn_anhui}{Number of confirmed deaths in Anhui, China}
#'   \item{deaths_chn_jiangsu}{Number of confirmed deaths in Jiangsu, China}
#'   \item{deaths_chn_fujian}{Number of confirmed deaths in Fujian, China}
#'   \item{deaths_chn_shaanxi}{Number of confirmed deaths in Shaanxi, China}
#'   \item{deaths_chn_guangxi}{Number of confirmed deaths in Guangxi, China}
#'   \item{deaths_chn_hebei}{Number of confirmed deaths in Hebei, China}
#'   \item{deaths_chn_heilongjiang}{Number of confirmed deaths in Heilongjiang, China}
#'   \item{deaths_chn_liaoning}{Number of confirmed deaths in Liaoning, China}
#'   \item{deaths_chn_hainan}{Number of confirmed deaths in Hainan, China}
#'   \item{deaths_chn_shanxi}{Number of confirmed deaths in Shanxi, China}
#'   \item{deaths_chn_gansu}{Number of confirmed deaths in Gansu, China}
#'   \item{deaths_chn_guizhou}{Number of confirmed deaths in Guizhou, China}
#'   \item{deaths_chn_ningxia}{Number of confirmed deaths in Ningxia, China}
#'   \item{deaths_chn_mng}{Number of confirmed deaths in Inner Mongolia}
#'   \item{deaths_chn_xinjiang}{Number of confirmed deaths in Xinjiang, China}
#'   \item{deaths_chn_jilin}{Number of confirmed deaths in Jilin, China}
#'   \item{deaths_chn_qinghai}{Number of confirmed deaths in Qinghai, China}
#'   \item{deaths_chn_xizang}{Number of confirmed deaths in Xizang, China}
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

outbreaks 2.0.0 (to be released)
==================

This version is refactoring of existing datasets.
Previous datasets have been kept as is for compatibility reason.
New datasets hold the same name with a suffix `_td` for tidy.

### Global changes

* Import from `tibble` in order to get consistent behaviour regardless of whether or not `tibble` is attached.
* Turning on markdown support for Roxygen, see [Turning on markdown support](https://roxygen2.r-lib.org/articles/rd-formatting.html#turning-on-markdown-support)
* Include a `Makefile` for common tasks.
* Run test in Travis CI.
* Try to enforce a standardization on column names for example `date_of_onset` everywhere, `gender` instead of `sex`, etc.

### Dengue & Zika datasets Funk et al. (2016)

* Only kept original columns (removed `nr` column that can be computed).
* Rename columns to try to keep a standard.
* Include the code used to generate datasets in `data-raw/` as stated in *[R Packages](http://r-pkgs.had.co.nz/data.html)* book.
* Include datasets tests through [testthat](https://testthat.r-lib.org/).
* Add licence in the documentation of the datasets.
* Small refactoring of the Markdown documentation.

outbreaks 1.8.0 (2020-02-13)
==================

### NEW FEATURES

One new dataset added:<br>

* `sarscov2_who_2019`: a dataset of the compiled World Health Organization SItuation Reports for the COVID-19/SARS-CoV-2 outbreak including worldwide confirmed cases and deaths. 

outbreaks 1.7.0 (2019-12-16)
==================

### NEW FEATURES

One new dataset added:<br>

* `ebola_sierraleone_2014`: a dataset of confirmed and suspected cases of Ebola
  haemorrhagic fever in Sierra Leone from 2014 to 2015

==================

### NEW FEATURES

One new dataset added:<br>

* `varicella_sim_berlin`: a simulated dataset of an outbreak of Varicella in
  german centers for foreigners


outbreaks 1.5.0 (2018-12-15)
==================

### NEW FEATURES

One new dataset added:<br>

* `nipah_malaysia`: human cases of Nipah virus in Malaysia and Singapore,
  1997-1999; data are weekly case counts, stratified by state / country


outbreaks 1.4.0
===============

### NEW FEATURES

* `rabies_car_2003`: dog rabies in Central African Republic, 2003-2012; data
comprise dates and locations of the cases, as well as viral sequences of the
pathogen for most cases



outbreaks 1.3.0 (2017-05-13)
==================

### NEW FEATURES

One new dataset added:<br>

* `s_enteritidis_pt59`: Distribution network and genetic clusters of a food-borne
     outbreak of Salmonella Enteritidis PT59 (98 cases)


<br>
<br>

outbreaks 1.2.0 (2017-02-04)
==================

### NEW FEATURES

Several new datasets added:<br>

* dengue_fais_2011: Incidence of 157 clinical cases of Dengue fever on the island
  of Fais, Micronesia<br>
* dengue_yap_2011: Incidence of 978 clinical cases of Dengue fever on the Yap
  Main Islands, Micronesia<br>
* zika_girardot_2015: Incidence of 1936 clinical cases of Zika virus disease in
  Girardot, Colombia<br>
* zika_sanandres_2015: Incidence of 928 clinical cases of Zika virus disease in San
  Andres, Colombia<br>
* zika_yap_2007: Incidence of 108 clinical cases of Zika virus disease on the Yap
  Main Islands, Micronesia


### MINOR IMPROVEMENTS

* Bertrand Sudre (bertrand.sudre@edc.europa.eu) added as the
 contributor of the mers_korea_2015 dataset<br>
* Now using snake_case throughout


<br>
<br>

outbreaks 1.1.0 (2016-11-24)
==================

### NEW FEATURES

* mers.korea.2015 has been added to the collection of outbreak
  datasets; this describes the initial information collected by the
  Epidemic Intelligence group at European Centre for Disease
  Prevention and Control (ECDC) during the first weeks of the outbreak
  of Middle East respiratory syndrome (MERS-CoV) outbreak (South Korea) in 2015


<br>
<br>

outbreaks 1.0.0 (2016-10-31)
==================
First release of the outbreaks package on CRAN!

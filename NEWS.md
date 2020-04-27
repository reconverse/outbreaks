outbreaks 2.0.0 (to be released)
================================

This version is a **refactoring of existing datasets**.
Previous datasets have been moved in `/data-raw` and prefixed by `leg_` (for legacy).

Note: If for compatibility reason you need to use the previous version of the datasets, 
you can load them by running `legacy_mode()`.

### Global changes

* **Technical changes**
  * tibble
    * Convert each dataset to `tibble`.
    * Import from `tibble` in order to get consistent behaviour regardless of whether or not `tibble` is attached.
  * tsibble
    * Optional possibility to use data as `tsibble`
    * Benefit from Tidy tools for time series, see [tidyverts](https://tidyverts.org/).
  * Tests
    * Include a test for each dataset through [testthat](https://testthat.r-lib.org/).
    * Run tests in Travis CI.
    * Structure tests: Test if the dataset structure (format) is correct
    * Data tests: Test if the dataset data (content) is correct
    * Timeseries tests: Test if the dataset is a valid timeseries (regular, ordered, 
      no duplication, no gaps)
    * TODO: Some tests could be factorized see http://r-pkgs.had.co.nz/tests.html
  * Include a `Makefile` for common tasks.
* **Documentation**
  * Turning on markdown support for Roxygen, see [Turning on markdown support](https://roxygen2.r-lib.org/articles/rd-formatting.html#turning-on-markdown-support).
  * Detailed description of the dataset is including in the "Details" section (instead of "Format").
  * Dedicated section "Licence" added to mention clearly the licence if it's known -> [#7](https://github.com/reconhub/outbreaks/issues/7).
  * Define `@family` with disease name in order to find similar datasets easily.
* **Dataset structure**
  * Variables are in lower case.
  * Stick to **tidy data** principle
  * Some common variables
    * `id`: Unique identification
    * `age`: Age of individual
    * `date_of_onset` (`Date`): Date of symptom onset
    * `date_of_report` (`Date`): Date of reporting
    * `gender`: Gender of individual as a factor with two values ("male", "female")
    * `incidence` (`integer`): Incidence is given as the number of new cases reported
    * `outcome`: 
    * `age`: Age of individual
    * `age_group`: Age grouping
    * `geo`: Geographical coordinates (must be two columns)
* **Process**
  * Write a "contributing guide" -> #TODO

### Dengue & Zika datasets Funk et al. (2016)

Datasets: `dengue_fais_2011_td`, `dengue_yap_2011_td`, `zika_yap_2007_td`.

* **Technical changes**
  * Include the code used to download the source file and 
  generate datasets in `data-raw/` as stated in *[R Packages](http://r-pkgs.had.co.nz/data.html)* book.
* **Format**
  * `onset_date` -> `date_of_onset`(standardization)
  * `nr` -> Removed since it can be computed
  * `value`-> `incidence` (`integer`)
* **Documentation**
  * Apply general documentation rules

### Ebola in Kikwit, Democratic Republic of the Congo, 1995

Datasets: `ebola_kikwit_1995`

*Source data not available.*

It was a sparse dataset, there is no event when reporting is FALSE so
* Replace data when reporting is `FALSE` by `NA`

```R
leg_ebola_kikwit_1995 %>% group_by(reporting) %>% summarise_if(is.numeric, sum)

# A tibble: 2 x 3
# reporting onset death
# <lgl>     <int> <int>
# 1 FALSE         0     0
# 2 TRUE        292   236
```

* **Format**
  * Replace missing values (`reporting == FALSE` with `NA`)
  * `date` -> `date_of_onset`(standardization)
  * `onset`-> `incidence` (standardization)
  * `death` (no change)
  * `reporting` -> removed

* **Documentation**
  * Apply general documentation rules
  * Fixed the number of incidence is 292 and not 291

### Ebola in Sierra Leone, 2014

* **Format**
  * `id` (no change)
  * `age` (no change)
  * `sex` -> `gender` and change factors name
  * `status` (no change)
  * `date_of_onset` (no change)
  * `date_of_sample`(no change)
  * `district` (no change)
  * `chiefdom` (no change)

### Influenza A H7N9 in China, 2013

* **Format**

* `case_id` -> id
* `date_of_onset` (no change)
* `date_of_hospitalisation` (no change)
* `date_of_outcome` (no change)
* `outcome` (no change)
* `gender` (hange factors name)
* `age` (no change)
* `province` (no change)



### References

* [Tidy Data](https://cran.r-project.org/web/packages/tidyr/vignettes/tidy-data.html)
* [Data chapter in the book *R packages*](http://r-pkgs.had.co.nz/data.html)
* [Taking your data to go with R packages](https://www.davekleinschmidt.com/r-packages/)
* [tsibble](https://tsibble.tidyverts.org/index.html)
* [tidyverts](https://tidyverts.org/)

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

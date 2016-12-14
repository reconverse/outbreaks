[![Travis-CI Build Status](https://travis-ci.org/reconhub/outbreaks.svg?branch=master)](https://travis-ci.org/reconhub/outbreaks)

[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/outbreaks)](https://cran.r-project.org/package=outbreaks)

[![CRAN Downloads](https://cranlogs.r-pkg.org/badges/outbreaks)](https://cran.r-project.org/package=outbreaks)

<br>

# outbreaks: a compilation of disease outbreak data

This package compiles a series of disease outbreak data, to be shared during Hackout 3.
Data can be provided as R objects (loaded automatically when loading the package), text files distributed alongside the package, or functions generating a dataset.

The following R datasets are currently available:



```r
data(package="outbreaks")
```



|Item                             |Title |
|:--------------------------------|:-----|
|ebola_kikwit_1995                | Ebola Kikwit, 1995     |
|ebola_sim                        | Ebola Simulation     |
|ebola_sim_clean                  | Ebola Simulation, Clean     |
|fluH7N9_china_2013               | FluH7N9 China, 2013     |
|influenza_england_1978_school    | Influenza England, 1978; School     |
|measles_hagelloch_1861           | Measles Hagelloch, 1861     |
|mers_korea_2015                  | Mers Korea, 2015     |
|norovirus_derbyshire_2001_school | Norovirus Derbyshire, 2001; School     |
|sars_canada_2003                 | SARS Canda, 2003     |
|smallpox_abakaliki_1967          | Smallpox Abakaliki, 1967     |


<br>

# Installing the package

To install the current stable, CRAN version of the package, type:

```r
install.packages("outbreaks")
```

To benefit from the latest features and bug fixes, install the development, *github* version of the package using:

```r
devtools::install_github("reconhub/outbreaks")
```

Note that this requires the package *devtools* installed.



<br>

## Add your own data!

### How to add data?
We will try to create a better repository and data submission system at a later stage.
The purpose of the current package is only to share examplar datasets during the hackathon.
Acceptable forms are:
- as a `.RData` files in the `data/` folder (recommended)
- as a text file in the `inst/` folder
- as a function loading/assembling/simulating a dataset

### Naming Conventions
We use the lower case throughout, and snake_case (using underscores) to separate words for the files and dataset names, so that for a `RData` object, a new dataset woud look like: `my_new_data_RData'. Try using informative names, typically using the disease first. Whenever available, order fields as:
   1. *disease*: mandatory
   2. *location*: optional
   3. *year*: optional
   4. *sim*: mandatory if this is a simulated dataset; otherwise data is assume to be an actual outbreak
   5. *other*: (any other relevant information)


<br>

### Contributors (by alphabetic order):
- [Finlay Campbell](https://github.com/finlaycampbell)
- [Simon Frost](https://github.com/sdwfrost)
- [Thibaut Jombart](https://github.com/thibautjombart)
- Pierre Nouvellet
- Bertrand Sudre


Maintainer: Finlay Campbell (f.campbell15@imperial.ac.uk)

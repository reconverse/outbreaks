library(tibble)
library(magrittr)
library(lubridate)
library(dplyr)

test_that("dengue_fais_2011 columns and their types are OK", {
  expect_columns_lowercase(dengue_fais_2011_td)
  expect_that(dengue_fais_2011_td, is_a('data.frame'))
  expect_is(dengue_fais_2011_td$date_of_onset, 'Date')
  expect_is(dengue_fais_2011_td$incidence, 'numeric')
})

test_that("dengue_fais_2011 data are OK", {
  expect_equal(dengue_fais_2011_td %>% dim(), c(57, 2))
  tb_sum <- dengue_fais_2011_td %>%
    summarise(incidence = sum(incidence), min_date = min(date_of_onset), max_date = max(date_of_onset))
  expect_equal(tb_sum %>% pull('incidence'), 155)
  expect_equal(tb_sum %>% pull('min_date'), ymd('2011-09-15'))
  expect_equal(tb_sum %>% pull('max_date'), ymd('2012-02-14'))
})


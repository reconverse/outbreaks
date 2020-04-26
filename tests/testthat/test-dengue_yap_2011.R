library(tibble)
library(magrittr)
library(lubridate)
library(dplyr)

context("dengue_yap_2011 dataset")

test_that("dengue_yap_2011 format is correct", {
  expect_columns_lowercase(dengue_yap_2011)
  expect_that(dengue_yap_2011, is_a('data.frame'))
  expect_is(dengue_yap_2011$date_of_onset, 'Date')
  expect_is(dengue_yap_2011$incidence, 'integer')
})

test_that("dengue_yap_2011 data are correct", {
  expect_equal(dengue_yap_2011 %>% dim(), c(185, 2))
  tb_sum <- dengue_yap_2011 %>%
    summarise(incidence = sum(incidence), min_date = min(date_of_onset), max_date = max(date_of_onset))
  expect_equal(tb_sum %>% pull('incidence'), 978)
  expect_equal(tb_sum %>% pull('min_date'), ymd('2011-07-07'))
  expect_equal(tb_sum %>% pull('max_date'), ymd('2012-04-12'))
})

test_that("dengue_yap_2011 is a valid time series", {
  tbl <- dengue_yap_2011_as_ts()
  expect_true(tsibble::is_tsibble(tbl))
  expect_false(tsibble::has_gaps(tbl) %>% pull())
  expect_false(tsibble::is_duplicated(tbl))
  expect_true(tsibble::is_regular(tbl))
  expect_true(tsibble::is_ordered(tbl))
})

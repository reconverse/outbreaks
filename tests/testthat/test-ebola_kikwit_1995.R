library(tibble)
library(magrittr)
library(lubridate)
library(dplyr)

context("ebola_kikwit_1995 dataset")

test_that("ebola_kikwit_1995 structure is correct", {
  expect_columns_lowercase(ebola_kikwit_1995)
  expect_that(ebola_kikwit_1995, is_a('data.frame'))
  expect_is(ebola_kikwit_1995$date_of_onset, 'Date')
  expect_is(ebola_kikwit_1995$incidence, 'integer')
  expect_is(ebola_kikwit_1995$death, 'integer')
})

test_that("dengue_fais_2011 data are correct", {
  expect_equal(ebola_kikwit_1995 %>% dim(), c(192, 3))
  tb_sum <- ebola_kikwit_1995 %>%
    tidyr::drop_na() %>%
    summarise(incidence = sum(incidence), death = sum(death), min_date = min(date_of_onset), max_date = max(date_of_onset))
  expect_equal(tb_sum %>% pull('incidence'), 292)
  expect_equal(tb_sum %>% pull('death'), 236)
  expect_equal(tb_sum %>% pull('min_date'), ymd('1995-01-06 '))
  expect_equal(tb_sum %>% pull('max_date'), ymd('1995-07-16'))
})

test_that("ebola_kikwit_1995 is a valid time series", {
  tbl <- ebola_kikwit_1995_as_ts()
  expect_true(tsibble::is_tsibble(tbl))
  expect_false(tsibble::has_gaps(tbl) %>% pull())
  expect_false(tsibble::is_duplicated(tbl))
  expect_true(tsibble::is_regular(tbl))
  expect_true(tsibble::is_ordered(tbl))
})

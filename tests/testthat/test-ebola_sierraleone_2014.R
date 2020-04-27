library(tibble)
library(magrittr)
library(lubridate)
library(dplyr)
library(tidyr)

context("ebola_sierraleone_2014 dataset")

test_that("ebola_sierraleone_2014 structure is correct", {
  expect_columns_lowercase(ebola_sierraleone_2014)
  expect_that(ebola_sierraleone_2014, is_a('data.frame'))
  expect_is(ebola_sierraleone_2014$date_of_onset, 'Date')
  expect_is(ebola_sierraleone_2014$date_of_sample, 'Date')
  expect_is(ebola_sierraleone_2014$id, 'factor')
  expect_is(ebola_sierraleone_2014$age, 'integer')
  expect_is(ebola_sierraleone_2014$gender, 'factor')
  expect_is(ebola_sierraleone_2014$status, 'factor')
  expect_is(ebola_sierraleone_2014$district, 'factor')
  expect_is(ebola_sierraleone_2014$chiefdom, 'factor')
})

test_that("dengue_fais_2011 data are correct", {
  expect_equal(ebola_sierraleone_2014 %>% dim(), c(11903, 8))
  tb_sum <- ebola_sierraleone_2014 %>%
    group_by(status) %>%
    tally() %>% spread(status, n)
  expect_equal(tb_sum %>% pull('confirmed'), 8358)
  expect_equal(tb_sum %>% pull('suspected'), 3545)

  tb_sum <- ebola_sierraleone_2014 %>%
    summarise(min_date = min(date_of_onset), max_date = max(date_of_onset))

  expect_equal(tb_sum %>% pull('min_date'), ymd('2014-05-18'))
  expect_equal(tb_sum %>% pull('max_date'), ymd('2015-09-12'))
})

test_that("ebola_sierraleone_2014 is a valid time series", {
  tbl <- ebola_sierraleone_2014_as_ts()
  expect_true(tsibble::is_tsibble(tbl))
  expect_false(tsibble::has_gaps(tbl) %>% pull() %>% all())
  expect_false(tsibble::is_duplicated(tbl, key = status))
  expect_true(tsibble::is_regular(tbl))
  expect_true(tsibble::is_ordered(tbl))
})

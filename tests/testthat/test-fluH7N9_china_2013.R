library(tibble)
library(magrittr)
library(lubridate)
library(dplyr)
library(tidyr)
library(forcats)

context("fluH7N9_china_2013 dataset")

test_that("fluH7N9_china_2013 structure is correct", {
  expect_columns_lowercase(fluH7N9_china_2013)
  expect_that(fluH7N9_china_2013, is_a('data.frame'))
  expect_is(fluH7N9_china_2013$id, 'factor')
  expect_is(fluH7N9_china_2013$date_of_onset, 'Date')
  expect_is(fluH7N9_china_2013$date_of_hospitalisation, 'Date')
  expect_is(fluH7N9_china_2013$date_of_outcome, 'Date')
  expect_is(fluH7N9_china_2013$gender, 'factor')
  expect_is(fluH7N9_china_2013$age, 'integer')
  expect_is(fluH7N9_china_2013$province, 'factor')
})

test_that("fluH7N9_china_2013 data are correct", {
  expect_equal(fluH7N9_china_2013 %>% dim(), c(136, 8))
  tb_sum <- fluH7N9_china_2013 %>%
    mutate(outcome = fct_explicit_na(outcome, na_level = "missing")) %>%
    group_by(outcome) %>%
    tally() %>% spread(outcome, n)
  expect_equal(tb_sum %>% pull('death'), 32)
  expect_equal(tb_sum %>% pull('recover'), 47)
  expect_equal(tb_sum %>% pull('missing'), 57)

  tb_sum <- fluH7N9_china_2013 %>%
    drop_na(date_of_onset) %>%
    summarise(min_date = min(date_of_onset), max_date = max(date_of_onset))

  expect_equal(tb_sum %>% pull('min_date'), ymd('2013-02-19'))
  expect_equal(tb_sum %>% pull('max_date'), ymd('2013-07-27'))
})


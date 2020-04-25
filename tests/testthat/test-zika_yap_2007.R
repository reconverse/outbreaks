library(tibble)
library(magrittr)
library(lubridate)
library(dplyr)

test_that("zika_yap_2007_td format is correct", {
  expect_columns_lowercase(zika_yap_2007)
  expect_that(zika_yap_2007, is_a('data.frame'))
  expect_is(zika_yap_2007$date_of_onset, 'Date')
  expect_is(zika_yap_2007$incidence, 'numeric')
})

test_that("zika_yap_2007_td data are correct", {
  expect_equal(zika_yap_2007 %>% dim(), c(29, 2))
  tb_sum <- zika_yap_2007 %>%
    summarise(incidence = sum(incidence), min_date = min(date_of_onset), max_date = max(date_of_onset))
  expect_equal(tb_sum %>% pull('incidence'), 108)
  expect_equal(tb_sum %>% pull('min_date'), ymd('2007-02-18'))
  expect_equal(tb_sum %>% pull('max_date'), ymd('2007-09-02 '))
})


library(tibble)
library(magrittr)
library(lubridate)
library(dplyr)

test_that("dengue_yap_2011_td format is correct", {
  expect_columns_lowercase(dengue_yap_2011_td)
  expect_that(dengue_yap_2011_td, is_a('data.frame'))
  expect_is(dengue_yap_2011_td$date_of_onset, 'Date')
  expect_is(dengue_yap_2011_td$incidence, 'numeric')
})

test_that("dengue_yap_2011_td data are correct", {
  expect_equal(dengue_yap_2011_td %>% dim(), c(185, 2))
  tb_sum <- dengue_yap_2011_td %>%
    summarise(incidence = sum(incidence), min_date = min(date_of_onset), max_date = max(date_of_onset))
  expect_equal(tb_sum %>% pull('incidence'), 978)
  expect_equal(tb_sum %>% pull('min_date'), ymd('2011-07-07'))
  expect_equal(tb_sum %>% pull('max_date'), ymd('2012-04-12'))
})


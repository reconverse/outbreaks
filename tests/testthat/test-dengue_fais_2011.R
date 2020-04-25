library(tibble)
library(magrittr)
library(lubridate)
library(dplyr)

test_that("dengue_fais_2011_td format is correct", {
  expect_columns_lowercase(dengue_fais_2011)
  expect_that(dengue_fais_2011, is_a('data.frame'))
  expect_is(dengue_fais_2011$date_of_onset, 'Date')
  expect_is(dengue_fais_2011$incidence, 'numeric')
})

test_that("dengue_fais_2011_td data are correct", {
  expect_equal(dengue_fais_2011 %>% dim(), c(57, 2))
  tb_sum <- dengue_fais_2011 %>%
    summarise(incidence = sum(incidence), min_date = min(date_of_onset), max_date = max(date_of_onset))
  expect_equal(tb_sum %>% pull('incidence'), 155)
  expect_equal(tb_sum %>% pull('min_date'), ymd('2011-09-15'))
  expect_equal(tb_sum %>% pull('max_date'), ymd('2012-02-14'))
})


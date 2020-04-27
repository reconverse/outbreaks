# Influenza A H7N9 in China, 2013 dataset preparation

library(tidyverse)


load("data-raw/fluH7N9_china_2013.RData")
leg_fluH7N9_china_2013.RData <- fluH7N9_china_2013

fluH7N9_china_2013 <- leg_fluH7N9_china_2013.RData %>%
  mutate(age = as.integer(age)) %>%
  rename(id = case_id) %>%
  mutate(gender = fct_recode(gender, "female" = "f", "male" = "m")) %>%
  mutate(outcome = as_factor(tolower(outcome))) %>%
  arrange(date_of_onset) %>%
  as_tibble()

usethis::use_data(fluH7N9_china_2013, overwrite = TRUE, compress = 'xz')

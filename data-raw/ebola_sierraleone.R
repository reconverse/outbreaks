# Ebola Sierra Leone Leone dataset preparation

library(tidyverse)

# Data can be download here
# https://www.pnas.org/highwire/filestream/622010/field_highwire_adjunct_files/2/pnas.1518587113.sd02.xlsx
# However the preparation from this raw data has no been done
# * the legacy data is clean
# * avoid to store the data several times

load("data-raw/leg_ebola_sierraleone_2014.RData")
leg_ebola_sierraleone_2014 <- ebola_sierraleone_2014

ebola_sierraleone_2014 <- leg_ebola_sierraleone_2014 %>%
  mutate(age = as.integer(age)) %>%
  mutate(gender = fct_recode(sex, "female" = "F", "male" = "M")) %>%
  select(-sex) %>%
  arrange(date_of_onset) %>%
  as_tibble()

usethis::use_data(ebola_sierraleone_2014, overwrite = TRUE, compress = 'xz')

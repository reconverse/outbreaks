# Ebola Kikwit data preparation

library(tidyverse)

load("data-raw/leg_ebola_kikwit_1995.RData")

leg_ebola_kikwit_1995 <- ebola_kikwit_1995

# Analysis -----

# It was a sparse dataset, there is no event when reporting is FALSE so
# - We will filter on reporting TRUE
# - Remove the useless reporting columnt
leg_ebola_kikwit_1995 %>% group_by(reporting) %>% summarise_if(is.numeric, sum)

# A tibble: 2 x 3
# reporting onset death
# <lgl>     <int> <int>
# 1 FALSE         0     0
# 2 TRUE        292   236

# Creation of the new dataset -----

ebola_kikwit_1995 <- leg_ebola_kikwit_1995 %>%
  filter(reporting) %>%
  select(-reporting) %>%
  rename(date_of_onset = date, incidence = onset) %>%
  as_tibble()

usethis::use_data(ebola_kikwit_1995, overwrite = TRUE, compress = 'xz')

# Dengue and zika datasets preparation

library(tidyverse)

# Source https://doi.org/10.1371/journal.pntd.0005173.s002
file_name <- "journal.pntd.0005173.s002.csv"
url <- "https://doi.org/10.1371/journal.pntd.0005173.s002"
raw_data <- str_glue("data-raw/{file_name}")
# Reload or not the file from the source
reload <- FALSE

if (reload | !file.exists(raw_data)) {
  download.file(url, raw_data)
}

raw <- readr::read_csv(raw_data,
                       col_names = TRUE,
                       na = "(NA)"
)

# Split the dataset --------
# The dataset is split in several datasets by disease / settting
# Inspiration:
# - https://stackoverflow.com/questions/57275613/how-to-name-a-list-of-a-group-split-in-dplyr-when-grouped-by-more-than-one-colum

df_group <- raw %>%
  rename(date_of_onset = onset_week) %>%
  arrange(date_of_onset) %>%
  group_by(disease, setting)
# get group keys
group_name_df <- group_keys(df_group) %>%
  mutate(group_name = str_glue("{disease}_{setting}"))
# get name for each group
group_name <- group_name_df$group_name

# assign name to each split table
df_list <- group_split(df_group, keep = FALSE) %>%
  setNames(group_name)

# dengue / fais --------
dengue_fais_2011 <- df_list$dengue_fais
usethis::use_data(dengue_fais_2011, overwrite = TRUE, compress = 'xz')

# dengue / yap --------
dengue_yap_2011 <- df_list$dengue_yap
usethis::use_data(dengue_yap_2011, overwrite = TRUE, compress = 'xz')

# zika / yap --------
zika_yap_2007 <- df_list$zika_yap
usethis::use_data(zika_yap_2007, overwrite = TRUE, compress = 'xz')

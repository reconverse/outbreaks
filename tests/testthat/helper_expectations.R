# Simple expectations to avoid duplications
library(magrittr)

expect_columns_lowercase <- function(tb) {
  expect_equal(tb, tb %>% rename_all(tolower))
}

# Simple expectations to avoid duplications

expect_columns_lowercase <- function(tb) {
  expect_equal(tb, tb %>% rename_all(tolower))
}

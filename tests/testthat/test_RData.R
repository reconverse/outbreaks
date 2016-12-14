context("RData objects distributed with the package")

test_that("ebola_sim and ebola_sim_clean are OK", {
    ## dimensions
    expect_identical(ncol(ebola_sim$linelist), ncol(ebola_sim_clean$linelist))
    expect_equal(nrow(ebola_sim$linelist), 5888)
    expect_equal(nrow(ebola_sim_clean$linelist), 5829)

    ## names
    expect_identical(names(ebola_sim), names(ebola_sim_clean))
    expect_identical(names(ebola_sim$linelist), names(ebola_sim_clean$linelist))
    expect_identical(names(ebola_sim$contacts), names(ebola_sim_clean$contacts))

    ## check dates
    id_dates <- grep("date", names(ebola_sim$linelist))
    expect_true(all(sapply(ebola_sim$linelist[id_dates], class)=="Date"))
    expect_true(all(sapply(ebola_sim_clean$linelist[id_dates], class)=="Date"))

})

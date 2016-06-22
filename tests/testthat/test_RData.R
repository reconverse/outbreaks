context("RData objects distributed with the package")

test_that("ebola.sim and ebola.sim.clean are OK", {
    ## dimensions
    expect_identical(ncol(ebola.sim$linelist), ncol(ebola.sim.clean$linelist))
    expect_equal(nrow(ebola.sim$linelist), 5888)
    expect_equal(nrow(ebola.sim.clean$linelist), 5689)

    ## names
    expect_identical(names(ebola.sim), names(ebola.sim.clean))
    expect_identical(names(ebola.sim$linelist), names(ebola.sim.clean$linelist))
    expect_identical(names(ebola.sim$contacts), names(ebola.sim.clean$contacts))

    ## check dates
    id.dates <- grep("date", names(ebola.sim$linelist))
    expect_true(all(sapply(ebola.sim$linelist[id.dates], class)=="Date"))
    expect_true(all(sapply(ebola.sim.clean$linelist[id.dates], class)=="Date"))

})

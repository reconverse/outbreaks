context("RData objects distributed with the package")

test_that("ebola.sim and ebola.sim.clean are OK", {
    ## dimensions
    expect_identical(ncol(ebola.sim), ncol(ebola.sim.clean))
    expect_equal(nrow(ebola.sim), 5889)
    expect_equal(nrow(ebola.sim.clean), 5830)

    ## names
    expect_identical(names(ebola.sim), names(ebola.sim.clean))

    ## check dates
    id.dates <- grep("date", names(ebola.sim))
    expect_true(all(sapply(ebola.sim[id.dates], class)=="Date"))
    expect_true(all(sapply(ebola.sim.clean[id.dates], class)=="Date"))

})

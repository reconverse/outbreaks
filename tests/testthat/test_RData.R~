context("Export tests")

files  <- dir(system.file(package="apex"), patter="patr", full=TRUE)
x      <- read.multiFASTA(files)
mulphy <- multidna2multiphyDat(x)
gensnp <- multidna2genind(x)
genphy <- multiphyDat2genind(mulphy)
gengen <- multidna2genind(x, mlst = TRUE, gapIsNA = TRUE)
muldna <- multiphyDat2multidna(mulphy)

test_that("genind conversion works as expected", {
  expect_that(gensnp, is_a("genind"))
  expect_that(gengen, is_a("genind"))
  expect_that(gensnp, is_equivalent_to(genphy))

  expect_true(adegenet::is.genind(gensnp))
  expect_that(adegenet::nLoc(gensnp), equals(11))
  expect_that(adegenet::nInd(gensnp), equals(8))

  expect_true(adegenet::is.genind(gengen))
  expect_that(adegenet::nLoc(gengen), equals(length(x@dna)))
  expect_that(adegenet::nInd(gengen), equals(8))
})

test_that("multiphyDat conversion works as expected", {
	expect_that(mulphy, is_a("multiphyDat"))
	expect_that(sample(mulphy@seq, 1)[[1]], is_a("phyDat"))
	expect_that(muldna, is_a("multidna"))
	expect_that(sample(muldna@dna, 1)[[1]], is_a("DNAbin"))
})

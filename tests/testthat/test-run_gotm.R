test_that("running gotm simulation", {
  library(GOTMr)
  sim_folder <- system.file('extdata', package = 'GOTMr')
  status = run_gotm(sim_folder, verbose = TRUE)

  expect_true(status == 0)

  expect_true(file.exists(file.path(sim_folder, 'output/output.nc')))

})

test_that("running gotm simulation - verbose = FALSE", {
  sim_folder <- system.file('extdata', package = 'GOTMr')
  status = run_gotm(sim_folder, verbose = FALSE)

  expect_true(status == 0)

  expect_true(file.exists(file.path(sim_folder, 'output/output.nc')))
})

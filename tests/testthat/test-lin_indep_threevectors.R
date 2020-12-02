test_that("Testing lin_indep_threevectors", {
  # Check if the functions gives an error if one of the vectors is not numeric.
  expect_error(lin_indep_threevectors(c(2, 1,1),c(3,2,1),c("A","B","C")))

  # Check if the functions returns true if the vectors are linearly independent.
  expect_true(lin_indep_threevectors(c(2,1,1),c(3,2,1),c(5,5,6)))

  # Check if the functions returns false if the vectors are not linearly independent.
  expect_false(lin_indep_threevectors(c(2,1,1,1),c(1,0,0,0),c(4,1,1,1)))

  # Check if the functions gives an error if the length of the three vectors are not all equal.
  expect_error(lin_indep_threevectors(c(2,1,1,1),c(1,0,0,0),c(4,1,1,1,1)))
})

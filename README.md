
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Linearity

<!-- badges: start -->
<!-- badges: end -->

The goal of Linearity is to check if three given vectors, that are of
the same length, are linearly independent. If they are independent, the
function returns true, otherwise false.

This package consists of one single function, lin\_indep\_threevectors.

We used `use_r`, `load_all()` and `use_readme_rmd()` from `devtools` to
create the files in the package. We used `use_testthat()` ,
`use_test("lin_indep_threevectors")` and `test()` from `usethis` to
create a test file for the function lin\_indep\_threevectors.

We wrote the function `lin_indep_threevectors` manually.

## Installation

You can install the released version of Linearity from
[CRAN](https://CRAN.R-project.org) with:

    install.packages("Linearity")

And the development version from [GitHub](https://github.com/) with:

    # install.packages("devtools")
    devtools::install_github("sezar543/Linearity")

## Example

This is a basic example which shows you how to solve a common problem:

    library(Linearity)
    lin_indep_threevectors(c(2,1,1),c(3,2,1),c(5,5,6))
    #> These three vectors are linearly independent
    #> [1] TRUE
    ## basic example code

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

    summary(cars)
    #>      speed           dist       
    #>  Min.   : 4.0   Min.   :  2.00  
    #>  1st Qu.:12.0   1st Qu.: 26.00  
    #>  Median :15.0   Median : 36.00  
    #>  Mean   :15.4   Mean   : 42.98  
    #>  3rd Qu.:19.0   3rd Qu.: 56.00  
    #>  Max.   :25.0   Max.   :120.00

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub!

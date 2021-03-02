
# dvc

<!-- badges: start -->
[![Lifecycle: experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![CRAN status](https://www.r-pkg.org/badges/version/dvc)](https://CRAN.R-project.org/package=dvc)
[![R build status](https://github.com/andrewcstewart/dvc-r/workflows/R-CMD-check/badge.svg)](https://github.com/andrewcstewart/dvc-r/actions)
![pkgdown](https://github.com/andrewcstewart/dvc-r/workflows/pkgdown/badge.svg)
<!-- badges: end -->

This package provides a simple wrapper around [Data Version Control (DVC)](https://dvc.org/).

## Installation

You can install the released version of dvc from [CRAN](https://CRAN.R-project.org) with:

``` r
# install.packages("dvc") # (Not on CRAN yet)
```

Or install the development version from GitHub with:

``` r
# install.packages("devtools")
devtools::install_github("andrewcstewart/dvc")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(dvc)
## basic example code

# install dvc
dvc::install_dvc()

# setup dvc in your current project
dvc::use_dvc()

# tell dvc to track a file
write.csv2(x = mtcars, file = "mtcars.csv")
dvc::add(path = "mtcars.csv")

# setup remote storage
dvc::remote_add(name = "myremote", url = "s3://my-bucket/dvc-storage")
dvc::push()
dvc::pull()
```

## Overview

[Data Version Control](https://dvc.org/), or DVC, is a data and ML experiment management tool that takes advantage of the existing engineering toolset that you're already familiar with (Git, CI/CD, etc.).  See the [official documentation](https://dvc.org/doc) for a full overview of DVC's functionality.
 
The purpose of this package is to aid in using DVC from within R.  For example, you may want to run DVC commands from an RMarkdown file as part of an analysis. The primary focus of the package currently implements the data tracking functionality of DVC.  


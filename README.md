
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
```

# TODO

- [x] `dvc init`
- [x] `dvc add`
- [ ] `dvc run`
- [x] `dvc push`
- [ ] install dvc

## Notes

### dvc init

```
git status
Changes to be committed:
        new file:   .dvc/.gitignore
        new file:   .dvc/config
        ...

git commit -m "Initialize DVC"
```

### dvc add

```
dvc add data/data.xml

git add data/data.xml.dvc data/.gitignore

git commit -m "Add raw data"
```

make changes

```
dvc add data/data.xml

git commit data/data.xml.dvc -m "Dataset updates"

dvc push
```

### dvc remote

```
dvc remote add -d storage s3://my-bucket/dvc-storage

git commit .dvc/config -m "Configure remote storage"
```


# dvc

<!-- badges: start -->
<!-- badges: end -->

The goal of dvc is to ...

## Installation

You can install the released version of dvc from [CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("dvc")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(dvc)
## basic example code
```

# TODO

- [ ] `dvc init`
- [ ] `dvc add`
- [ ] `dvc run`
- [ ] `dvc push`


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

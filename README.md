<!-- README.md is generated from README.Rmd. Please edit that file -->
Live Training
=============

This is an empty repo for [Jared Lander's](https://www.jaredlander.com) [Live Training](https://www.safaribooksonline.com/live-training/courses/beginning-r-programming/0636920144847/).

Packages
========

To get started run the following code to install the latest version of the necessary packages.

``` r
packages <- c('coefplot','DBI', 'ggthemes', 'jsonlite', 'rprojroot', 
              'RSQLite', 'tidyverse', 'usethis', 'UsingR')
install.packages(packages)
```

Project Structure
=================

Making use of RStudio projects greatly improves the user experience. To facilitate this users should run the following code which will recreate this package on their computer.

``` r
usethis::use_course('https://github.com/jaredlander/LiveFebuary2018')
```

Clone this Repo
---------------

Alternatively, if you use git then please clone this repo then open it as an [RStudio Project](https://support.rstudio.com/hc/en-us/articles/200526207-Using-Projects).

``` sh
# if using SSH
git clone git@github.com:jaredlander/LiveJanuary2018.git

# if using https
git clone https://github.com/jaredlander/LiveJanuary2018.git
```

Data
====

Data for the class is kept at [data.world](https://data.world/landeranalytics/training). Either download all the data files individually or source `prep/DownloadData.r`.

This script requires that you are using an [RStudio Project](https://support.rstudio.com/hc/en-us/articles/200526207-Using-Projects).

``` r
source('prep/DownloadData.r')
```

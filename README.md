
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

Making use of RStudio projects greatly improves the user experience. To facilitate this users should run the following code which will recreate this package on their computer. Be sure to select the positive prompts such as `yes`, `yeah`, etc.

``` r
newProject <- usethis::use_course('https://github.com/jaredlander/LiveFebruary2018/archive/master.zip')
```

After that runs successfully you will have a new folder holding the R project that looks like this.

<img src="images/ProjectFolder.png" width="1036" />

Either double-click the file called LiveFebruary2018.Rproj or run the following line of code.

``` r
rstudioapi::openProject(newProject)
```

After running this code, or double-clicking that file, you will be in an RStudio Project called LiveFebruary2018. You can see this in the top right of RStudio.

<img src="images/ProjectCorner.png" width="197" />

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

Data for the class is kept at [data.world](https://data.world/landeranalytics/training). You can sign up for a free account or run the following code (this requires that you are using an [RStudio Project](https://support.rstudio.com/hc/en-us/articles/200526207-Using-Projects) setup exactly like this repo).

``` r
source('prep/DownloadData.r')
```

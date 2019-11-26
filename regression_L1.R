
# prep --------------------------------------------------------------------

setwd("D:/R_wd")
# loading packages
# expss must be loaded after haven
list.packages <- c("tidyverse", "sjPlot", "haven")
# check if the packages are installed
l <- !(list.packages %in% installed.packages()[ , "Package"])
new.packages <- list.packages[l]
# install new packages
if(length(new.packages)) install.packages(new.packages)
# load the packages
lapply(list.packages, require, character.only = TRUE)
# remove lists
rm(l, list.packages, new.packages)
# options
options(readr.show_progress = TRUE)
# do not show scientific notation
options(scipen = 999)

# read file ---------------------------------------------------------------

df_s <- read_sav(file = "TSCS/0601Q1/tscs2010q1.sav", encoding = "CP950")
#---------#---------#---------#---------#---------#---------#

# Project: AHRQ - MEPS 2017 Consolidated Data File Analysis
# Creator: Shreevidya Periyasamy 
# Contact: shreevidya.periyasamy@tufts.edu
# Creation Date: 08.17.2020

#---------#---------#---------#---------#---------#---------#


# Question: Are there differences in access to care based 
#           on insurance coverage type?


#---------#---------#---------#---------#---------#---------#

# Intializing required libraries
library(car)
library(foreign)
library(leaps)
library(MASS)
library(psych)
library(stats)
library(table1)
library(tidyverse)

# Loading dataset into the environment
# MEPS2017_full <- read.csv("h201.csv


# Loading dataset from the AHRQ - MEPS website
url <- "https://meps.ahrq.gov/mepsweb/data_files/pufs/h201ssp.zip"

download.file(url, temp <- tempfile())

meps2017_full <- unzip(temp, exdir = tempdir())

dn2017 <- read.xport(meps2017_full)

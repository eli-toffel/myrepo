###############################################
# Housekeeping File
# Purpose: Set up environment for project
###############################################

### 1. Load required packages
packages <- c(
  "tidyverse",
  "readxl",
  "lubridate",
  "janitor",
  "here",
  "dplyr"
)

# Install missing packages
installed <- packages %in% installed.packages()[, "Package"]
if (any(!installed)) {
  install.packages(packages[!installed])
}

# Load packages
lapply(packages, library, character.only = TRUE)


### 2. Load data
load("Q:/8020 Xcel CPP TOU/_Secure Data/Working Files/Customer survey sampling/customers.rdata")

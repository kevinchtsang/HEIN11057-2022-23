# analysis.R - R Script File
#  
# Import data, perform exploratory data analysis

# Library imports
library(tidyverse)
library(ggplot2)

# Import mtcars dataset
mtcars_raw <- mtcars 

# All columns are numeric (double) data types
glimpse(mtcars_raw)

# Summary statistics
summary(mtcars_raw)

# To do - data processing

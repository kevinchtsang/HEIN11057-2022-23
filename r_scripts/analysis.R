# analysis.R - R Script File
#  
# Import data, perform exploratory data analysis

# Library imports
library(tidyverse)
library(ggplot2)
library(knitr)

# Import mtcars dataset
mtcars_raw <- mtcars 

# All columns are numeric (double) data types
glimpse(mtcars_raw)

# Summary statistics
summary(mtcars_raw)

# Convert the weight variable to actual values in lbs and rename the variable to be more descriptive
mtcars_proc <- mtcars_raw %>%
  mutate(wt = wt * 1000) %>% 
  rename(wt_lbs = wt)

# Change number-encoded categorical variables to factors
mtcars_proc$cyl <- as.factor(mtcars_proc$cyl)
mtcars_proc$gear <- as.factor(mtcars_proc$gear)
mtcars_proc$vs <- as.factor(mtcars_proc$vs)
mtcars_proc$carb <- as.factor(mtcars_proc$carb)

# Display the table in a human-readable format
kable(mtcars_proc)

# Create and display a box plot showing the mileage distribution for each engine cylinder configuration
mpg_cyl_boxplot <- ggplot(mtcars_proc, aes(x=cyl, y=mpg, fill=cyl)) +
  geom_boxplot() +
  labs(
    title = "Miles per Gallon Across Different Cylinder Configurations",
    x = "No. of Cylinders",
    y = "Miles per Gallon"
  )

mpg_cyl_boxplot

# To do - Additional data processing and visualizations

# Linear regression
lm = lm(formula = mpg ~ ., data = mtcars_proc)
summary(lm)



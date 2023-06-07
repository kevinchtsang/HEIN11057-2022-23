#' This is a file
#'
#' teh aim is to filtre some cols and make a graph

library(tidyverse)
library(ggplot2)


mtcars %>% head(10)

## adding some graphs and 
# Summary statistics

mtcars %>% 
  summary()

# draw a scatter plot of mpg vs. wt
ggplot(mtcars, aes(wt, mpg)) +
  geom_point() +
  geom_smooth()

#create factor cyl and am
mtcars <- mtcars %>% 
  mutate(fcyl = as.factor(cyl),
         fam = as.factor(am))

# Using mtcars, plot mpg vs. wt, colored by fcyl

ggplot(mtcars, aes(wt, mpg, color = fcyl)) +
  geom_point() +
  stat_smooth(method = "lm", se = FALSE)

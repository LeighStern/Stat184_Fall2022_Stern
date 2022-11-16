
library(dplyr)
data(diamonds)

fivenum(diamonds$carat)

#different ways to calculate the five number summary of the diamonds data set
min(diamonds$carat, na.rm = TRUE)
quantile(diamonds$carat, probs = 0.25, na.rm = TRUE)
median(diamonds$carat, na.rum = TRUE)
quantile(diamonds$carat, probs = 0.75, na.rm = TRUE)
max(diamonds$carat, na.rm = TRUE)

summary(diamonds$carat)

diamonds%>%
  summarise(
    min = min(carat, na.rm = TRUE),
    Q1 = quantile(carat, probs = 0.25, na.rm = TRUE),
    median(diamonds$carat, na.rum = TRUE),
    quantile(diamonds$carat, probs = 0.75, na.rm = TRUE),
    max(diamonds$carat, na.rm = TRUE),
  )

browseVignettes(package = "dplyr")

library(dplyr)

diamonds %>%
  group_by(cut) %>%
  summarise(across(c(x, y, z), mean))
  
  group_by(cut, x, y, z)

summary(diamonds$x, diamonds$y, diamonds$z)

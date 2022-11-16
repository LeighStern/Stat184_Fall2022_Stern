#Plan --->
##Data set: https://1drv.ms/x/s!AvGQE7lqLl20kDZadQKx01JKN5sn?e=QfnEU6
## Load packages (ggplot2, esquisse,)
## Aim: rank the heights of family role
## Mappings: family role, heights

# Code ------
galtonData <- Galton_Tidy_Data

library(ggplot2)
library(esquisse)

esquisse::esquisser(data = galtonData, viewer = "browser")

ggplot(
  data = galtonData,
  mapping = aes(x = family_member, y = height)
) + 
  geom_boxplot(fill = "#FF8C00") + 
  theme_minimal() + 
  ylab("Difference in Height from 60 inches")


militaryData <- Excel_Military_Marital_Status_Tidy_Data

library(ggplot2)
library(esquisse)

esquisse::esquisser(data = militaryData, viewer = "browser")

warrant <- c("W-1", "W-2", "W-3", "W-4", "W-5")
militaryData %>%
  dplyr::filter(pay_grade %in% warrant)

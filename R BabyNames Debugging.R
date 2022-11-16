

install.packages("dplyr")

library(dplyr)
babyData <- BabyNames

Tmp <- group_by(babyData, year, sex)
  summarise(Tmp, totalBirths = sum(count))

Tmp <- group_by(babyData, year, sex)
  summarise(Tmp, totalBirths = sum(count))

BabyNames %>%
  group_by(name) %>%
  summarise(votesReceived=n())
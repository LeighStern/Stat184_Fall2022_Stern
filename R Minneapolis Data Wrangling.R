library(dcData)
minneapolisData <- Minneapolis2013

library(dplyr)

minneapolisData %>%
  group_by(Precinct) %>%
  count(Precinct, sort = TRUE)
            

minneapolisData %>%
  count(First, Second, sort = TRUE)

minneapolisData %>%
  group_by(Precinct) %>%
  summarise(maximum = max(Precinct, na.rm = TRUE))
  
  summarise(firstSecond = sum())
  count(First, Second, sort = TRUE)


minneapolisData %>%
  summarise(count = n())
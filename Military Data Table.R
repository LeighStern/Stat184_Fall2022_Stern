library(dplyr)
library(janitor)
library(knitr)
library(kableExtra)

rawArmy <- read.table(
  file = "https://www.dropbox.com/s/ifh16ihiyl04gkt/rawArmyData.csv?dl=1",
  header = TRUE, 
  sep = ","
)

rawArmy %>%
  filter(maritalStatus == "Single with Children") %>%
  tabyl(payGrade, sex) %>% 
  adorn_totals(where = c("row", "col")) %>% 
  adorn_percentages(denominator = "all") %>% 
  adorn_pct_formatting(digits = 2) %>% 
  adorn_ns(position = "front") %>% 
  adorn_title(
    placement = "top",
    row_name = "Pay Grade",
    col_name = "Sex"
  ) 

militaryFreq <- rawArmy %>% 
  kable(
    caption = "yada yada", 
    booktabs = TRUE,
    align = c("l", rep("c", 6))
  ) %>% 
  kableExtra::kable_styling(
    boostrap_options = c("striped", "condensed"),
    font_size = 14
  )

library(dplyr)
library(janitor)
library(knitr)
library(kableExtra)

rawArmy <- read.table(
  file = "https://www.dropbox.com/s/ifh16ihiyl04gkt/rawArmyData.csv?dl=1",
  header = TRUE,
  sep = ","
)

rawArmy %>%
  filter(maritalStatus == "Single with Children") %>%
  tabyl(payGrade, sex) %>%
  adorn_totals(where = c("row", "col")) %>%
  adorn_percentages(denominator = "all") %>%
  adorn_pct_formatting(digits = 2) %>%
  adorn_ns(position = "front") %>%
  adorn_title(
    placement = "top",
    row_name = "Pay Grade",
    col_name = "Sex"
  ) %>%
  kable(
    caption = "yada yada",
    booktabs = TRUE,
    align = c("l", rep("c", 6))
  ) %>%
  kableExtra::kable_styling(
    boostrap_options = c("striped", "condensed"),
    font_size = 14
  )





armyFreqTable <- rawArmy %>%
  kable(
    caption = "yada yada", 
    booktabs = TRUE,
    align = c("l", rep("c", 6))
  ) %>% 
  kableExtra::kable_styling(
    boostrap_options = c("striped", "condensed"),
    font_size = 14
  )

armyFrequency = rawArmy
kable(armyFrequency,
      format = "html") %>% 
  kableExtra::kable_styling(
    bootstrap_options = c("striped", "condensed"),
    font_size = 16
  )

  d1 = head(iris)
  d2 = head(mtcars)
  # pipe tables by default
  kable(d1)  
  

armyFrequency <- rawArmy %>%
  adorn_ns(position = "front", ns = formatNs)

mtcars %>%
  tabyl(am, cyl) %>%
  adorn_percentages("col") %>%
  adorn_pct_formatting() %>%
  adorn_ns(position = "front")


armyFrquency <- rawArmy %>% 
  adorn_ns(position = "front", ns = formatNs)


diamondFreqTab %>%
  kable(
    caption = "Cut and Color of Diamonds",
    booktabs = TRUE,
    align = c("l", rep("c", 6))
  ) %>%
  kableExtra::kable_styling(
    bootstrap_options = c("striped", "condensed"),
    font_size = 16
  )



rawArmy %>% 
  kable(
    caption = "Pay Grade and Sex by Single with Children",
    booktabs = TRUE,
    align = c("l", rep("c", 2))
  ) %>% 
  kableExtra::kable_styling(
    bootstrap_options = c("striped", "condensed"),
    font_size = 16
  )

statusCategory <- c("Single with Children")

militaryFrequency <- group_by(rawArmyData_1_, payGrade, sex, maritalStatus) %>%
  filter(maritalStatus %in% statusCategory)
  tabyl(statusCategory)

militaryTable <- rawArmyData_1_ %>%
  tabyl(statusCategory, sex)




library (knitr)
library(dplyr)
library(kableExtra)

data("diamonds", package = "ggplot2")
diamondModel <- lm(formula = price ~ carat, data = diamonds)
diamondModOut <- summary(diamondModel)

diamondModOut$coefficients %>%
  kable() %>%
  kableExtra::kable_classic()

typeof(diamondModOut)
structure(diamondModOut)


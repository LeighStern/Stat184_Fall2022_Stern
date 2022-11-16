library(ggplot2)
data(diamonds)

diamondsData <- diamonds

library(ggplot2)
library(esquisse)

esquisse::esquisser(data = diamondsData, viewer = "browser")

ggplot(diamondsData) +
  aes(x = carat, y = color) +
  geom_boxplot(fill = "#A45641") +
  coord_flip() +
  theme_minimal()


ggplot(diamondsData) +
  aes(x = carat, y = cut) +
  geom_boxplot(fill = "#9B14BB") +
  coord_flip() +
  theme_minimal()



ggplot(diamondsData) +
  aes(x = carat, y = clarity) +
  aes(x = carat, y = color) + 
  geom_boxplot(fill = "#112446") +
  coord_flip() +
  theme_minimal()

library(dplyr)


diamondsData %>%
  filter(color %in% differentColors) %>%
  ggplot(
      aes(x = carat, y = color) +
      geom_boxplot(fill = "#A45641") +
      coord_flip() +
      theme_minimal()
  )





ggplot(diamondsData) +
  aes(x = carat, y = color) +
  geom_boxplot(fill = "#8093B4") +
  labs(
    x = "Carat",
    y = "Color",
    title = "Diamond Carat Vs. Color and Cut"
  ) +
  coord_flip() +
  theme_classic() +
  facet_grid(vars(), vars(cut))




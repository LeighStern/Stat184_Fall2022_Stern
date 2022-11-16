library(palmerpenguins)
penguinData <- palmerpenguins::penguins

library(ggplot2)
library(esquisse)

esquisse::esquisser(data = penguinData, viewer = "browser")

ggplot(penguinData) +
  aes(x = body_mass_g, y = species) +
  geom_boxplot(fill = "#F1E81C") +
  labs(x = "Body Mass (g)", y = "Species") +
  theme_minimal() +
  facet_grid(vars(), vars(sex))

ggplot(penguinData) +
  aes(x = body_mass_g, y = species) +
  geom_boxplot(fill = "#73DBC4") +
  labs(
    x = "Body Mass (g)",
    y = "Species",
    title = "Penguin Weight Compared by Species and Sex"
  ) +
  theme_bw() +
  facet_wrap(vars(sex))






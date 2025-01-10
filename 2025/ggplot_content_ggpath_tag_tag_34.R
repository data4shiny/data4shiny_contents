library(tidyverse)
library(gapminder)
  library("ggpath")
# Carregar o dataset gapminder
data("gapminder")

# Filtrar os dados para o Brasil
brasil_data <- gapminder[gapminder$country == "Brazil", ]

# Caminho da imagem do logotipo (substitua pelo caminho do seu logotipo)
logo_path <- "www/img/logo_r.jpeg"


ggplot(brasil_data, aes(x = year, y = gdpPercap)) +
  geom_from_path(aes(path = logo_path), width = 0.2) +
  labs(
    title = logo_path,
    subtitle = logo_path,
    x = logo_path,
    y = logo_path,
    caption = logo_path
  ) +
  theme(
    plot.caption = element_path(),
    axis.title.x = element_path(),
    axis.title.y = element_path(),
    plot.title = element_path(),
    plot.subtitle = element_path()
  )
  theme_minimal()


ggplot(brasil_data, aes(x = year, y = gdpPercap)) +
   # ggplot(brasil_data, aes(x = year, y = logo_path)) +
  geom_from_path(aes(path = logo_path), width = 0.2, alpha = 0.2) +
  coord_cartesian(xlim = c(-2, 2)) +
  theme_minimal() +
  labs(
    title = logo_path,
    subtitle = logo_path,
    x = logo_path,
    y = logo_path,
    caption = logo_path
  ) +
  theme(
    plot.caption = element_path(),
    axis.text.y = element_path(),
    axis.title.x = element_path(),
    axis.title.y = element_path(),
    plot.title = element_path(),
    plot.subtitle = element_path()
  )
  theme(
    plot.caption = element_path(hjust = 1, size = 0.6),
    axis.text.y = element_path(size = 1),
    axis.title.x = element_path(),
    axis.title.y = element_path(vjust = 0.9),
    plot.title = element_path(hjust = 0, size = 2, alpha = 0.5),
    plot.subtitle = element_path(hjust = 0.9, angle = 45),
  )

# Criar o gráfico
ggplot(brasil_data, aes(x = year, y = 1)) +
  geom_from_path(aes(path = logo_path), width = 0.2, alpha = 0.2) +
  coord_cartesian(xlim = c(-2, 2)) +
  theme_minimal() +
  labs(
    title = "This is a very catchy title",
    subtitle = "And an informative subtitle",
    x = "x axis label",
    y = "y axis label",
    caption = "useful caption",
    tag = logo_path
  )  +
  theme(
    plot.tag = element_path(size = 2, vjust = 1, alpha = 0.7),
    plot.caption = element_path(),
    axis.title.x = element_path(),
    plot.tag.position = c(0,1)
  )





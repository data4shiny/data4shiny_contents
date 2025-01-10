# - - - - - - - -  - - - - - - - - -  - - - - - - - - -  - - - - - - - - -  -

# without guide specification
p
#
# Show colorbar guide for colour.
# All these examples below have a same effect.

p + guides(colour = red, size = "legend", shape = "legend")
p + guides(colour = guide_colorbar(), 
           size = guide_legend(nrow = 1),
           shape = guide_legend())

# position of guides

# Multiplos guias tratando os elementos da minha legenda:
ggplot(mpg, aes(displ, cty)) + 
  geom_point(aes(colour = cyl, size = cyl, shape = drv)) 
# col = cyl --- colour = cyl
p + guides(
  # colour = guide_colourbar(order = 2,
  #                          theme = theme_gray(base_size = 15),
  #                          display = 'rectangles',
  #                          title = 'Titulo colour',
  #                          alpha = .1,
  #                          nbin = 6),
  
  colour = guide_legend(title = 'Title colour',
                        ncol = 2,
                        order = 3,
                        position = 'right',
                        direction = 'vertical',
                        theme = theme_dark(base_size = 15)),
  shape = guide_legend(),
  size = guide_legend(),
  x = guide_axis(),
  y = guide_axis(minor.ticks = TRUE,title = 'Titulo do Y',position = 'right')
)








p +
  scale_colour_continuous(guide = "colorbar") +
  scale_size_discrete(guide = "legend") +
  scale_shape(guide = "legend")

# Remove some guides
p + guides(colour = "none")
p + guides(colour = "colorbar",size = "none")

# Guides are integrated where possible

p +
  guides(
    colour = guide_legend("title"),
    size = guide_legend("title"),
    shape = guide_legend("title")
  )


# same as
g <- guide_legend("title")
p + guides(colour = g, size = g, shape = g)

p + theme(legend.position = "bottom")



# Carregando pacotes necessários
library(ggplot2)
library(gapminder)

# Criando um gráfico de dispersão com múltiplas guias
data_brazil <- gapminder::gapminder %>% dplyr::filter(country == 'Brazil')
ggplot(data_brazil, aes(lifeExp, gdpPercap)) +
  
  geom_line() +
  geom_point() +
  # geom_point(aes(colour = year, size = year, shape = factor(year))) +
  geom_point(aes(colour = continent, size = pop, shape = factor(year))) +
  # Customizando as guias
  guides(
    colour = guide_legend(order = 2),    # Guia de cores (continente)
    shape = guide_legend(order = 3),     # Guia de formas (ano)
    size = guide_legend(order = 1)      # Guia de tamanhos (população)
  ) +
  labs(
    title = "Distribuição de Expectativa de Vida e PIB per Capita",
    x = "Expectativa de Vida",
    y = "PIB per Capita",
    colour = "Continente",
    size = "População",
    shape = "Ano"
  )



# Carregando pacotes necessários
library(ggplot2)
library(gapminder)

# Criando um gráfico de dispersão com múltiplas guias
ggplot(data_brazil, aes(lifeExp, gdpPercap)) +
  geom_point(aes(colour = continent, size = pop, shape = factor(year))) + 
  guides(
    colour = guide_colorbar(theme = theme_classic(base_size = 20)), 
    shape = guide_legend(order = 3),     # Guia de formas (ano)
    size = guide_legend(order = 1),
    x = guide_axis(angle = 45,theme = theme_gray(base_size = 12)),
    y = guide_axis(angle = 45,theme = theme_gray(base_size = 12))# Guia de cores (continente))# Guia de tamanhos (população)
  ) +
  labs(
    title = "Distribuição de Expectativa de Vida e PIB per Capita",
    x = "Expectativa de Vida",
    y = "PIB per Capita",
    colour = "Continente",
    size = "População",
    shape = "Ano"
  )

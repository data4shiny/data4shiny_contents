library(gapminder)
library(ggplot2)
library(dplyr)

# 1️⃣ labs() → Adicione títulos e subtítulos
ggplot(gapminder, aes(x = year, y = lifeExp, group = country)) +
  geom_line(alpha = 0.3) +
  labs(
    title = "Evolução da Expectativa de Vida",
    subtitle = "Dados do Gapminder (1952 - 2007)"
  )

# 2️⃣ facet_wrap() → Compare categorias lado a lado
ggplot(gapminder, aes(x = year, y = lifeExp, group = country)) +
  geom_line(alpha = 0.3) +
  facet_wrap(~ continent) +
  labs(
    title = "Expectativa de Vida por Continente",
    subtitle = "Facets ajudam a enxergar padrões regionais"
  )

# 3️⃣ coord_flip() → Inverta os eixos
ggplot(gapminder, aes(x = continent, y = lifeExp)) +
  geom_boxplot() +
  coord_flip() +
  labs(
    title = "Comparação de Expectativa de Vida",
    subtitle = "Boxplot por continente, invertendo os eixos"
  )

# 4️⃣ theme_minimal() → Crie gráficos limpos
ggplot(gapminder, aes(x = year, y = gdpPercap)) +
  geom_line(aes(group = country), alpha = 0.3) +
  scale_y_log10() +  # Exemplo para mostrar escala log
  theme_minimal() +
  labs(
    title = "Renda per Capita em Escala Log",
    subtitle = "Visual com tema minimalista"
  )

# 5️⃣ scale_fill_gradient() → Realce com gradientes
ggplot(gapminder, aes(x = year, y = lifeExp, color = pop)) +
  geom_point(alpha = 0.5) +
  scale_color_gradient(low = "#87CEEB", high = "#FF4500") +
  labs(
    title = "Expectativa de Vida x População",
    subtitle = "Cor representa tamanho da população"
  )

# 6️⃣ geom_text() → Adicione rótulos diretamente
china_data <- gapminder %>% filter(country == "China")

ggplot(china_data, aes(x = year, y = lifeExp)) +
  geom_line() +
  geom_text(aes(label = round(lifeExp, 0)), vjust = -0.5, size = 3) +
  labs(
    title = "Evolução da Expectativa de Vida - China",
    subtitle = "Dados do Gapminder"
  )

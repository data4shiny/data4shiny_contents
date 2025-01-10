# Carregar pacotes necessários
library(ggplot2)
library(dplyr)

# Criar um dataset de exemplo
dados <- data.frame(
  fabricante = c("Dodge", "Toyota", "Volkswagen", "Ford"),
  quantidade = c(10, 15, 8, 20)
)

# Gráfico com barras horizontais SEM ajuste de espaçamento
ggplot(dados, aes(x = quantidade, y = fabricante)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  labs(
    title = "Número de carros por fabricante",
    x = "Quantidade",
    y = "Fabricante"
  )


#'[Correção]
#'
#'# Gráfico com barras horizontais COM ajuste de espaçamento
ggplot(dados, aes(x = quantidade, y = fabricante)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  labs(
    title = "Número de carros por fabricante",
    x = "Quantidade",
    y = "Fabricante"
  ) +
  scale_x_continuous(expand = expansion(mult = c(0, 0.1)))


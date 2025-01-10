# Carregar os pacotes necessários
library(tidyr)
library(ggplot2)

# Criar um dataframe exemplo no formato largo
dados <- data.frame(
  Ano = c(2020, 2021, 2022),
  Vendas_A = c(500, 600, 700),
  Vendas_B = c(700, 800, 900)
)

# Visualizar o dataframe largo
print("Dataframe Largo:")
print(dados)

# Transformar o dataframe largo em longo
dados_longos <- pivot_longer(
  dados,
  cols = c(Vendas_A, Vendas_B), # Selecionar as colunas para transformar
  names_to = "Produto",         # Nome da nova coluna para os nomes das colunas originais
  values_to = "Vendas"          # Nome da nova coluna para os valores das colunas originais
)

# Visualizar o dataframe longo
print("Dataframe Longo:")
print(dados_longos)

# Transformar o dataframe longo de volta para o formato largo
dados_largos <- pivot_wider(
  dados_longos,
  names_from = Produto, # Nome da coluna cujos valores se tornam as novas colunas
  values_from = Vendas  # Nome da coluna que preencherá os valores
)

# Visualizar o dataframe novamente em formato largo
print("Dataframe Transformado de Volta para Largo:")
print(dados_largos)

# Criar um gráfico de barras com os dados longos
ggplot(dados_longos, aes(x = Ano, y = Vendas, fill = Produto)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(
    title = "Vendas por Produto",
    x = "Ano",
    y = "Vendas"
  ) +
  theme_minimal()


library(ggplot2)
library(dplyr)
library(stringr)

# Criando um dataframe com strings problemáticas (espaços indesejados)
df <- tibble(
  categoria = c("  A", "B ", "C", " A", "B ", "C"),
  valor = c(10, 20, 30, 15, 25, 35)
)

# Tentativa de criar o gráfico SEM limpar as strings
ggplot(df, aes(x = categoria, y = valor)) +
  geom_bar(stat = "identity") +
  labs(
    title = "Gráfico com Categorias Problemáticas",
    x = "Categoria",
    y = "Valor"
  ) +
  theme_light()

# Resultado: Categorias duplicadas como " A" e "A" aparecerão separadamente no eixo x.

# -----------------------------------------------------
# Solução: Usar str_trim() para limpar os espaços
# -----------------------------------------------------

# Limpando os espaços com str_trim
df_limpo <- df %>%
  mutate(categoria = str_trim(categoria))

df_limpo_gsub <- df %>% mutate(categoria = gsub("^\\s+|\\s+$", "", categoria))

# Criando o gráfico após a limpeza das strings
ggplot(df_limpo, aes(x = categoria, y = valor)) +
  geom_bar(stat = "identity") +
  labs(
    title = "Gráfico com Categorias Limpas",
    x = "Categoria",
    y = "Valor"
  ) +
  theme_minimal()

# Resultado: O gráfico agora apresenta as categorias corretamente agrupadas.

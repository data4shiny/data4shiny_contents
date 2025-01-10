library(tidyverse)
# Slide 2 - Exemplo inicial com valores ausentes
dados <- data.frame(
  grupo = c("A", "A", "B", "B", "C", "C"),
  valor = c(10, NA, NA, 20, NA, 30)
)
print(dados)

# Slide 3 - Aplicando a função fill()
library(tidyr)

# Aplicando a função fill
dados_preenchidos <- dados %>% fill(valor)
print(dados_preenchidos)

# Slide 4 - Direções possíveis com .direction
# Preenchendo para baixo (padrão)
dados_down <- dados %>% fill(valor, .direction = "down")

# Preenchendo para cima
dados_up <- dados %>% fill(valor, .direction = "up")

# Slide 5 - Aplicação prática - Séries temporais
vendas <- data.frame(
  dia = as.Date('2024-01-01') + 0:4,
  vendas = c(100, NA, NA, 200, NA)
)

vendas_preenchidas <- vendas %>% fill(vendas, .direction = "down")
print(vendas_preenchidas)

# Slide 6 - Preenchendo dados categóricos
dados_cat <- data.frame(
  regiao = c("Norte", NA, NA, "Sul", NA, "Leste"),
  valor = c(10, 15, 20, 25, 30, 35)
)

dados_cat_preenchidos <- dados_cat %>% fill(regiao)
print(dados_cat_preenchidos)

# Slide 7 - Combinação com a função coalesce()
dados_multi <- data.frame(
  grupo = c("A", NA, "B", NA),
  valor1 = c(10, NA, 20, NA),
  valor2 = c(NA, 15, NA, 25)
)

dados_multi_preenchidos <- dados_multi %>% 
  fill(grupo, .direction = "down") %>% 
  mutate(valor1 = coalesce(valor1, valor2))
print(dados_multi_preenchidos)

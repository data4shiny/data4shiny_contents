# Slide 2: case_when()
library(dplyr)

x <- c(1, 2, 3, 4)

case_when(
  x %% 2 == 0 ~ "par",  # Se x é divisível por 2, retorna "par"
  TRUE ~ "ímpar"        # Para qualquer outro caso, retorna "ímpar"
)


# Slide 3: case_match()
library(dplyr)

x <- c("A", "B", "C", "D")

case_match(
  x,
  "A" ~ "Alpha",    # Quando x for "A", retorna "Alpha"
  "B" ~ "Beta",     # Quando x for "B", retorna "Beta"
  .default = "Outros"  # Para outros valores, retorna "Outros"
)

# Slide 5: Argumentos Importantes do case_match()
case_match(
  x,
  "A" ~ "Alpha",
  "B" ~ "Beta",
  .default = "Não definido",
  .ptype = character()
)


# Slide 6: Combinando case_match() e case_when()
x <- c("A", "B", "X", "Y")

case_when(
  x %in% c("A", "B") ~ case_match(
    x,
    "A" ~ "Letra A",
    "B" ~ "Letra B"
  ),
  TRUE ~ "Outros"
)

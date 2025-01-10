library(dplyr)



df <- tibble(id = 1:4, w = 1:4, x = 1:4, y = 1:4, z = 1:4)

df %>%
  mutate(
    sum = sum(across(w:z))
  )


df %>%
  rowwise() %>%
  mutate(
    sum = sum(c_across(w:z))
  )


# Criação do dataframe com NAs
df <- tibble(
  id = 1:6,
  w = c(10, 20, NA, 40, 50, 60),
  x = c(15, 25, NA, 45, 55, 65),
  y = c(5, 10, 15, 20, 25, 30),
  z = c(NA, 35, 45, 55, 65, 75) # NA na linha 6
)

print(df)

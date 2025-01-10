# Criando o dataframe inicial
df_ts <- tibble(
  id = 1:4,
  year_2021 = c(100, 200, NA, 400),
  year_2022 = c(150, NA, 300, 450),
  year_2024 = c(240, NA, NA, NA)
)

df_ts %>%
  pivot_longer(cols = starts_with("year"), names_to = "year", values_to = "value") %>%
  mutate(value = replace_na(value, median(value, na.rm = TRUE))) %>%
  pivot_wider(names_from = year, values_from = value)

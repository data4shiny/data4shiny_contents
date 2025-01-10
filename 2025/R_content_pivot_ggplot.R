# Dados originais no formato largo
df_sales <- tibble(
  product = c("A", "B", "C"),
  sales_2021 = c(100, 150, 200),
  sales_2022 = c(120, 160, 220)
)

# Transformação para formato longo
df_sales_long <- df_sales %>%
  pivot_longer(cols = starts_with("sales"), 
               names_to = "year", 
               values_to = "sales")

# Gráfico com ggplot2
df_sales_long %>%
  ggplot(aes(x = year, y = sales, fill = product)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Vendas por Produto e Ano", 
       x = "Ano", y = "Vendas") +
  theme_minimal()

# Retorno ao formato largo
df_sales_long %>%
  pivot_wider(names_from = year, values_from = sales)

library(tidyverse)

# Função compare_df_cols()
df1 <- data.frame(A = 1)
df2 <- data.frame(B = 2)
compare_df_cols(df1, df2)

# Função remove_empty()
data %>% remove_empty("rows")

# Função get_dupes()
data %>% get_dupes(coluna)

# Função clean_names()
data %>% clean_names()

# Função tabyl()
data %>% tabyl(coluna)

# Função adorn_totals()
data %>% tabyl(coluna) %>% adorn_totals()
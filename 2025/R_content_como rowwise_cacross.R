library(dplyr)

# sem rowwise
airquality %>% filter(sum(is.na(c_across(everything()))) > 1)

# sem rowwise
airquality %>%
  rowwise() %>%
  filter(sum(is.na(c_across(everything()))) > 1)


# Criando o data frame
df <- data.frame(
  Col1 = c(1, 2, 3),
  Col2 = c(4, 5, 6),
  Col3 = c(7, 8, NA),
  Col4 = c(10, NA, 11),
  Col5 = c(NA, 13, 14),
  Col6 = c(16, NA, 17)
)

# Garantindo que a terceira linha tenha exatamente dois valores
df[3, c(3, 6)] <- NA  # Tornando os valores ausentes
df

df %>% 
  select(sum(is.na(c_across(everything()))) > 1)
  filter(sum(is.na(c_across(everything()))) > 1)

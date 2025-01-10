# Instalar e carregar pacotes necessários
if (!requireNamespace("gtsummary", quietly = TRUE)) {
  install.packages("gtsummary")
}
if (!requireNamespace("broom.helpers", quietly = TRUE)) {
  install.packages("broom.helpers")
}

library(gtsummary)
library(dplyr)

# Criando um exemplo de dataframe
data <- data.frame(
  Asbestos = c(1, 0, 1, 0, 1, 0, 0, 1, 0, 1),
  Age = c(45, 50, 30, 60, 35, 55, 40, 65, 43, 37),
  Outcome = c(5.2, 3.8, 5.8, 4.0, 6.1, 3.5, 4.3, 5.9, 3.9, 6.4)
)

# Ajustando um modelo linear
fit <- lm(Outcome ~ Asbestos + Age, data = data)

# Tabela de regressão mais completa possível
tbl_regression(
  fit,
  exponentiate = FALSE,  # Mantém coeficientes na escala original
  conf.level = 0.95      # Define o intervalo de confiança como 95%
) %>%
  add_global_p() %>%       # Adiciona p-valor global para o modelo
  add_vif() %>%            # Adiciona valores de VIF (colinearidade)
  add_significance_stars() # Adiciona estrelas de significância (estilo * para p-valor)

# Exibir a tabela formatada
tbl_reg


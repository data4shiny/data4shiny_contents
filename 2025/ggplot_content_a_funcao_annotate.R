library(ggplot2)

# Cria um data frame com os dados e a anotação
mtcars_labeled <- mtcars
mtcars_labeled$label <- ifelse(rownames(mtcars) == "Mazda RX4", "Mazda RX4", NA)

# Gráfico com geom_text()
ggplot(mtcars_labeled, aes(x = wt, y = mpg)) +
  geom_point() +
  geom_text(aes(label = label), nudge_y = 1, color = "blue")


# Gráfico com annotate()
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  annotate("text", x = 2.62, y = 21, label = "Mazda RX4", color = "red", size = 5)

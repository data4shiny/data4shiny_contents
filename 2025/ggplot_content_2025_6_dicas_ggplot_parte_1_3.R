# Remova a legenda
ggplot(data, aes(x = categoria, fill = categoria)) +
  geom_bar() +
  theme(legend.position = "none")

# Personalize a legenda
ggplot(data, aes(x = categoria, fill = categoria)) +
  geom_bar() +
  scale_fill_discrete(name = "Título da Legenda",
                      labels = c("cat1" = "Categoria 1", "cat2" = "Categoria 2"))

# Troque as cores manualmente
ggplot(data, aes(x = categoria, fill = categoria)) +
  geom_bar() +
  scale_fill_manual(values = c("cat1" = "#0081e8", "cat2" = "#d4b4f6"))

# Remova os rótulos do eixo x
ggplot(data, aes(x = categoria, fill = categoria)) +
  geom_bar() +
  theme(axis.title.x = element_blank(),
        axis.text.x = element_blank(),
        axis.ticks.x = element_blank())

# Controle o eixo y
ggplot(data, aes(x = categoria, fill = categoria)) +
  geom_bar() +
  scale_y_continuous(limits = c(0, 100))

# Formate os valores do eixo y
ggplot(data, aes(x = categoria, fill = categoria)) +
  geom_bar() +
  scale_y_continuous(labels = scales::comma)

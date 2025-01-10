ggplot(iris,aes(Sepal.Length,Species, fill = Species)) + geom_col() +
  theme()

ggplot(iris,aes(Sepal.Length,Species, fill = Species)) + geom_col() +
  theme(axis.text.y = element_text(hjust = 0))

# you can use geom_text():
  
  ggplot(iris,aes(Sepal.Length,Species, fill = Species)) +
  geom_col() +
  geom_text(aes(x = 100, label = Species))
  
  ggplot(iris,aes(Sepal.Length,Species, fill = Species)) +
    geom_col() +
    geom_text(aes(x = 0, label = Species))
  
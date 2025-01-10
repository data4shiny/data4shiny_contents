ggplot(mtcars,aes(cyl,mpg))+geom_point()+scale_x_continuous(limits = c(-8,8))


ggplot(mtcars,aes(cyl,mpg)) + 
  geom_point() + 
  scale_x_continuous(limits = c(-8,8)) + 
  geom_vline(xintercept = 0) + 
  geom_hline(yintercept = 0)


library(tidyverse)

# default
iris %>% 
  ggplot(aes(Sepal.Length-6.2, Sepal.Width-3.2, col = Species)) +
  geom_point() +
  xlim(c(-2.5,2.5)) +
  ylim(c(-1.5,1.5)) +
  geom_hline(yintercept = 0)  +
  geom_vline(xintercept = 0)

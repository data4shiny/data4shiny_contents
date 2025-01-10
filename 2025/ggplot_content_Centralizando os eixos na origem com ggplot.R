library(ggplot2)
library(ggplot2)

  iris %>% 
    ggplot(aes(Sepal.Length - 5, Sepal.Width - 2, col = Species)) +
    geom_point() 
  
  
  iris %>% 
    ggplot(aes(Sepal.Length - 5, Sepal.Width - 2, col = Species)) +
    geom_hline(yintercept = 0) +
    geom_vline(xintercept = 0) +
    geom_point() 

  
  library(ggplot2)
  
  iris %>% 
    ggplot(aes(Sepal.Length - 5, Sepal.Width - 2, col = Species)) +
    geom_hline(yintercept = 0) +
    geom_vline(xintercept = 0) +
    geom_point() +
    theme_minimal()

  
  iris %>% 
    ggplot(aes(Sepal.Length, Sepal.Width, col = Species)) +
    geom_point() +
    xlim(c(0,8)) +
    ylim(c(0,4.5))+
    geom_hline(yintercept = 0) +
    geom_vline(xintercept = 0)

  
  
  
  # Criando um dataframe exemplo
  set.seed(42)
  data <- data.frame(
    x = rnorm(100, mean = 0, sd = 5),  # 100 valores com média 0 e desvio padrão 5
    y = rnorm(100, mean = 0, sd = 3)   # 100 valores com média 0 e desvio padrão 3
  )
  
  # Sem limites nos eixos
  ggplot(data, aes(x, y)) +
    geom_point()
  
  # Com xlim() e ylim()
  ggplot(data, aes(x, y)) +
    geom_point() +
    xlim(-50, 50) +
    ylim(-25, 25)
  
  # Com scale_x_continuous() e scale_y_continuous()
  symmetric_limits <- function(x) {
    max_val <- max(abs(x))
    c(-max_val, max_val)
  }
  
  ggplot(data, aes(x, y)) +
    geom_point()+
    xlim(-50, 50) +
    ylim(-25, 25) +
    scale_x_continuous(limits = symmetric_limits) +
    scale_y_continuous(limits = symmetric_limits)
  
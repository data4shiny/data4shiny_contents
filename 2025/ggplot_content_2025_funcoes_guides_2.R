# ggplot object
library(tidyverse)
dat <- data.frame(x = 1:5, y = 1:5, p = factor(1:5), q = factor(1:5),
                  r = factor(1:5))
p <- ggplot(dat, aes(x, y, color = p, size = q, shape = r)) +
  geom_point()

p

p + guides(
  colour = guide_legend(title = 'Title colour',
                        ncol = 2,
                        order = 3,
                        position = 'right',
                        direction = 'vertical',
                        theme = theme_dark(base_size = 15)),
  shape = guide_legend(),
  size = guide_legend(),
  x = guide_axis(),
  y = guide_axis(minor.ticks = TRUE,title = 'Titulo do Y',position = 'right')
)

#
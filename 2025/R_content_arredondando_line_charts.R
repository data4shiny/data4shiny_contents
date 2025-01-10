library(ggplot2)

set.seed(1)
counts <- as.data.frame(table(x = rpois(100,5)))
counts$x <- as.numeric(as.character(counts$x))

ggplot(counts, aes(x, Freq)) +
  geom_segment(aes(xend = x, yend = 0))

ggplot(counts, aes(x, Freq)) +
  geom_segment(aes(xend = x, yend = 0), linewidth = 5.5)

ggplot(counts, aes(x, Freq)) +
  geom_segment(aes(xend = x, yend = 0), linewidth = 5.5, lineend = "round")





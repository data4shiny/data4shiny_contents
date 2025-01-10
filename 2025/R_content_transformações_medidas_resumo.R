


mtcars %>% 
  group_by(cyl) %>% 
  nest() 

mtcars %>% 
  group_by(cyl) %>% 
  summarise(
    mean_mpg = mean(mpg),
    sd_mpg = sd(mpg)
  )

mtcars %>% 
  group_by(cyl) %>% 
  nest() %>% 
  mutate(
    summary_stats = map(data, ~ summarise(.x, 
                                          mean_mpg = mean(mpg), 
                                          sd_mpg = sd(mpg)
    ))
  ) %>% 
  unnest(cols = c(data, summary_stats))

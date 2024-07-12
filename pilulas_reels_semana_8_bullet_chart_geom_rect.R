
library(tidyverse)
library(ggtext)
###########################
######## Main Chart
###########################


continent_america <- structure(
  list(
    Country_name = c(
      "Haiti",
      "Venezuela",
      "Chile",
      "Brazil",
      "Peru",
      "Argentina",
      "El Salvador",
      "Colombia",
      "United States",
      "Trinidad and Tobago",
      "Jamaica",
      "Mexico",
      "Ecuador",
      "Nicaragua",
      "Dominican Republic",
      "Honduras",
      "Bolivia",
      "Panama",
      "Paraguay",
      "Uruguay",
      "Guatemala",
      "Australia",
      "Canada",
      "Costa Rica",
      "New Zealand"
    ),
    Regional_indicator = c(
      "Latin America and Caribbean",
      "Latin America and Caribbean",
      "Latin America and Caribbean",
      "Latin America and Caribbean",
      "Latin America and Caribbean",
      "Latin America and Caribbean",
      "Latin America and Caribbean",
      "Latin America and Caribbean",
      "North America and ANZ",
      "Latin America and Caribbean",
      "Latin America and Caribbean",
      "Latin America and Caribbean",
      "Latin America and Caribbean",
      "Latin America and Caribbean",
      "Latin America and Caribbean",
      "Latin America and Caribbean",
      "Latin America and Caribbean",
      "Latin America and Caribbean",
      "Latin America and Caribbean",
      "Latin America and Caribbean",
      "Latin America and Caribbean",
      "North America and ANZ",
      "North America and ANZ",
      "Latin America and Caribbean",
      "North America and ANZ"
    ),
    continent = c(
      "America",
      "America",
      "America",
      "America",
      "America",
      "America",
      "America",
      "America",
      "America",
      "America",
      "America",
      "America",
      "America",
      "America",
      "America",
      "America",
      "America",
      "America",
      "America",
      "America",
      "America",
      "America",
      "America",
      "America",
      "America"
    ),
    Freedom_to_make_life_choices = c(
      0.537825167179108,
      0.623278319835663,
      0.744896292686462,
      0.79980480670929,
      0.824766099452972,
      0.831132411956787,
      0.83380526304245,
      0.836179912090302,
      0.84261953830719,
      0.857907116413116,
      0.858068525791168,
      0.858709275722504,
      0.859828948974609,
      0.863902866840363,
      0.866202771663666,
      0.870603263378143,
      0.875873327255249,
      0.880366504192352,
      0.885923445224762,
      0.892395436763763,
      0.908147573471069,
      0.91543173789978,
      0.933913230895996,
      0.93473893404007,
      0.936217486858368
    ),
    average_ok = c(
      0.583360169603934,
      0.583360169603934,
      0.583360169603934,
      0.583360169603934,
      0.583360169603934,
      0.583360169603934,
      0.583360169603934,
      0.583360169603934,
      0.583360169603934,
      0.583360169603934,
      0.583360169603934,
      0.583360169603934,
      0.583360169603934,
      0.583360169603934,
      0.583360169603934,
      0.583360169603934,
      0.583360169603934,
      0.583360169603934,
      0.583360169603934,
      0.583360169603934,
      0.583360169603934,
      0.583360169603934,
      0.583360169603934,
      0.583360169603934,
      0.583360169603934
    ),
    median = c(
      0.79980480670929,
      0.79980480670929,
      0.79980480670929,
      0.79980480670929,
      0.79980480670929,
      0.79980480670929,
      0.79980480670929,
      0.79980480670929,
      0.79980480670929,
      0.79980480670929,
      0.79980480670929,
      0.79980480670929,
      0.79980480670929,
      0.79980480670929,
      0.79980480670929,
      0.79980480670929,
      0.79980480670929,
      0.79980480670929,
      0.79980480670929,
      0.79980480670929,
      0.79980480670929,
      0.79980480670929,
      0.79980480670929,
      0.79980480670929,
      0.79980480670929
    ),
    good = c(
      0.883360169603934,
      0.883360169603934,
      0.883360169603934,
      0.883360169603934,
      0.883360169603934,
      0.883360169603934,
      0.883360169603934,
      0.883360169603934,
      0.883360169603934,
      0.883360169603934,
      0.883360169603934,
      0.883360169603934,
      0.883360169603934,
      0.883360169603934,
      0.883360169603934,
      0.883360169603934,
      0.883360169603934,
      0.883360169603934,
      0.883360169603934,
      0.883360169603934,
      0.883360169603934,
      0.883360169603934,
      0.883360169603934,
      0.883360169603934,
      0.883360169603934
    ),
    very_good = c(
      0.974998116493225,
      0.974998116493225,
      0.974998116493225,
      0.974998116493225,
      0.974998116493225,
      0.974998116493225,
      0.974998116493225,
      0.974998116493225,
      0.974998116493225,
      0.974998116493225,
      0.974998116493225,
      0.974998116493225,
      0.974998116493225,
      0.974998116493225,
      0.974998116493225,
      0.974998116493225,
      0.974998116493225,
      0.974998116493225,
      0.974998116493225,
      0.974998116493225,
      0.974998116493225,
      0.974998116493225,
      0.974998116493225,
      0.974998116493225,
      0.974998116493225
    ),
    Classification = c(
      "Average",
      "Median",
      "Median",
      "Median",
      "Good",
      "Good",
      "Good",
      "Good",
      "Good",
      "Good",
      "Good",
      "Good",
      "Good",
      "Good",
      "Good",
      "Good",
      "Good",
      "Good",
      "Very Good",
      "Very Good",
      "Very Good",
      "Very Good",
      "Very Good",
      "Very Good",
      "Very Good"
    ),
    Classification_factors = structure(
      c(
        1L,
        3L,
        3L,
        3L,
        2L,
        2L,
        2L,
        2L,
        2L,
        2L,
        2L,
        2L,
        2L,
        2L,
        2L,
        2L,
        2L,
        2L,
        4L,
        4L,
        4L,
        4L,
        4L,
        4L,
        4L
      ),
      levels = c("Average", "Good", "Median", "Very Good"),
      class = "factor"
    )
  ),
  row.names = c(NA, -25L),
  class = c("tbl_df", "tbl", "data.frame")
)


##########################

p1 <- ggplot(
  continent_america,
  aes(x = Country_name, y  = Freedom_to_make_life_choices, fill =  Country_name),
  show.legend = FALSE
) +
  
  scale_x_discrete(expand = c(0, 0))  +
  scale_y_continuous(expand = c(0, 0), breaks = seq(0.05, 1, 0.05))  +
  coord_flip() +
  
  ###########################
######## Basics Annotations: Titles, Subtitle, Caption, Tag, x-axis Label, y-axis Label,
########                     x.tick.marks label, y.tick.marks label, tick.marks
########
############################

labs(
  title = "Top 20- Ranked Batters in Mens Test Cricket",
  subtitle = "SOURCE: ICC Rankings <span style = 'color:#448cebea;'> http:://http.icc-crickets.com/rankings </span>
                  |  Batting averages: <span style = 'color:#448cebea;'> http:://http.icc-crickets.com/rankings </span>",
  caption = "The <span style = 'color:#448cebea; font-size:18pt; color:black '>**Top 20**</span> Ranked Batters in Mens Test Cricket"
) +
  
  ##########################
######## Legends: guides
##########################
guides(x = guide_axis(title = NULL), y  = guide_axis(title = NULL)) +
  
  ##########################
######## Chart References:
##########################
  geom_rect(aes( ymin = 0, ymax = average_ok , xmin = 0, xmax = nrow(continent_america) + .45),
    show.legend = FALSE,alpha = 0.03, fill = '#edf8fb') +
  
  geom_rect(aes( ymin = average_ok,ymax = median , xmin = 0, xmax = nrow(continent_america) + .45),
    show.legend = FALSE,alpha = 0.03, fill = '#b2e2e2') +
  
  geom_rect(aes(ymin = median,  ymax = good  ,xmin = 0, xmax = nrow(continent_america) + .45),
    show.legend = FALSE,    alpha = 0.03,    fill = '#66c2a4'  ) +
  
  geom_rect(aes(ymin = good,ymax = very_good  ,  xmin = 0,xmax = nrow(continent_america) + .45),
    show.legend = FALSE,    alpha = 0.03,    fill = '#238b45'  ) +
  
  annotate(  'text',family = 'Roboto',x = .345,  y = 0.55,label = "Average",size = 3,
    color = '#7a7a7a',alpha = 0.85) +
  annotate( 'text', family = 'Roboto',x = .345,  y = 0.77,label = "Median",size = 3,
    color  = '#5a5f6d',   alpha = 0.85) +
  annotate( 'text',  family = 'Roboto', x = .345, y = 0.855,label = "Good", size = 3,
    color = '#3d3d3d',alpha = 0.85) +
  annotate( 'text', family = 'Roboto',x = .345, y = 0.930,label = "Very Good",size = 3,
    color = '#000000',alpha = 0.85) +
  
  geom_col( aes(label = Country_name, fill = Classification_factors),  width = .3,
    alpha = 0.7,show.legend = FALSE ) +
  
  ##########################
######## Color Scales
##########################

scale_fill_manual(values = c('#7a7a7a', '#3d3d3d', '#5a5f6d', '#000000')) +
  #scale_fill_manual(values = c('yellow','red','blue','black'))+
  
  ##########################
######## Non-Data elements: theme() functions
##########################
theme(
  plot.background = element_rect(fill = 'white'),
  plot.margin = margin(1, 1, 0, 1, 'cm'),
  plot.title.position = 'plot',
  plot.title = element_text(family = 'Roboto',face = 'bold',size = 25 , lineheight = 1.2),
  plot.subtitle = element_markdown( family = 'Roboto',face = 'bold',color = 'black',
    size = 8, margin = margin(0, 0, 0.5, 0, 'cm') ),
  
  plot.caption = element_markdown(margin = margin(1, 0, 0.5, 0, 'cm'), size = 8.5),
  panel.background = element_rect(fill = 'white'),
  panel.grid = element_blank(),
  
  axis.ticks.y = element_blank(),
  axis.ticks.x = element_blank(),
  axis.text.y = element_text( family = 'Roboto',face = 'bold',size = 9, margin = margin(0, 0, 0, 0, 'cm'),
                              hjust = 0,color = '#404040'),
  axis.text.x = element_text( family = 'Roboto',face = 'bold',size = 7, margin = margin(.2, 0, 0, 0, 'cm'),
    hjust = 0,color = '#404040' )
)

p1


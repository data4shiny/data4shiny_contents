library(shiny)
library(shinyWidgets)
library(highcharter)
library(shinyglide)


df <- data.frame(x = paste0(month.abb[1:5]," - 2021"),
                 portfolio_invested = runif(n = 5,min = 20, max = 30),
                 portfolio_historical = runif(n = 5,min = 20, max = 30),
                 portfolio_revenue = runif(n = 5,min = 20, max = 30),
                 colors = c(color = c('#0F60D2','#0F60D2','#EF2D3E','#EF2D3E','#EF2D3E')))



ui <- fluidPage(
  tags$style(
    
    '
    
    body{
    height: 100vh;
    background-color:hsla(239,100%,50%,0.27);
background-image:
radial-gradient(at 80% 0%, hsla(106,1%,84%,1) 0px, transparent 50%),
radial-gradient(at 0% 50%, hsla(272,1%,84%,1) 0px, transparent 50%),
radial-gradient(at 80% 100%, hsla(159,1%,84%,1) 0px, transparent 50%);
background-reapeat: no-repeat;
    }
    
    
    .div_1,
    .div_2,
    .div_3{
          background: whitesmoke;
          padding: 1em;
          margin:  1em auto;
          width: fit-content;
    }
    
    .shinyglide{
    background: whitesmoke;
    border-radius: 10px;
    width: 50%;
    margin: 1em auto;
    border: 2px solid;
    

    }
    
    .shinyglide::before {
    border-radius: 10px 10px 0px 0px;
    height: 10px;
    content: "";
    width: 100%;
    display: block;
    background: black;
}
    
 
    '),
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  glide(
    
    screen(
      div(
        class = 'div_1',
        h4(
          'Portfolio Invested',
          tags$span(class = 'glyphicon glyphicon-euro')
        ),
        
        highchartOutput('chart_1', width
                        = 400, height = 200),
        # sliderInput(inputId = 'slide', label = 'Slide Widget',min = 0,
        #             max = 10, value = 5),
        # tabsetPanel(
        #   tabPanel(
        #     title = 'Painel 1'
        #   ),
        #   tabPanel(
        #     title = 'Painel 2'
        #   ),
        #   tabPanel(
        #     title = 'Painel 3'
        #   ),
        #   tabPanel(
        #     title = 'Painel 4'
        #   ),
        #   tabPanel(
        #     title = 'Painel 5'
        #   )
        #   
        # )
      )
  ),
  
  screen(
    div(
      class = 'div_2',
      h4(
        'Portfolio Historical',
        tags$span(class = 'glyphicon glyphicon-euro')
      ),
      
      highchartOutput('chart_2', width
                      = 400, height = 200),
    )
  ),
  
  screen(
    div(
      class = 'div_3',
      h4(
        'Portfolio Invested',
        tags$span(class = 'glyphicon glyphicon-euro')
      ),
      
      highchartOutput('chart_3', width
                      = 400, height = 200)
    )
  )
  
  
  
  )
  # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  
)

server <- function(input, output, session) {
  
  output$chart_1 <- renderHighchart({
    
    hchart(df, "column",
           hcaes(x, portfolio_invested, color =colors),
           
           name = "Portfolio Invested",
           color = 'black',
           showInLegend = TRUE)  %>%
      hc_xAxis(enabled = TRUE,
               title = TRUE,
               
               categories = df$x,
               style = list(fontStyle = '')) %>%
      
      hc_yAxis(enabled = FALSE,
               title = FALSE) %>%
      
      hc_credits(enabled = TRUE) %>%
      hc_plotOptions(series = list(borderRadius = 3.5))%>%
      hc_size(height = 200)
    
    
  })
  
  output$chart_2 <- renderHighchart({
    
    hchart(df, "line",
           hcaes(x, portfolio_historical, color =colors),
           
           name = "Portfolio Historical",
           color = 'lightblue',
           showInLegend = TRUE)  %>%
      hc_xAxis(enabled = TRUE,
               title = TRUE,
               
               categories = df$x,
               style = list(fontStyle = '')) %>%
      
      hc_yAxis(enabled = FALSE,
               title = FALSE) %>%
      
      hc_credits(enabled = TRUE) %>%
      hc_plotOptions(series = list(borderRadius = 3.5))%>%
      hc_size(height = 200)
    
    
  })
  
  output$chart_3 <- renderHighchart({
    
    hchart(df, "column",
           hcaes(x, portfolio_revenue, color =colors),
           
           name = "Portfolio Revenue",
           color = 'black',
           showInLegend = TRUE)  %>%
      hc_xAxis(enabled = TRUE,
               title = TRUE,
               
               categories = df$x,
               style = list(fontStyle = '')) %>%
      
      hc_yAxis(enabled = FALSE,
               title = FALSE) %>%
      
      hc_credits(enabled = TRUE) %>%
      hc_plotOptions(series = list(borderRadius = 3.5))%>%
      hc_size(height = 200)
    
    
  })
  
  
  
  
}

shinyApp(ui, server)
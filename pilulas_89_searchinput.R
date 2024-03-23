library(shiny)
library(shinyWidgets)
library(shinydashboard)
library(tidyverse)




ui <- fluidPage(
  includeCSS(path = 'www/css/style_89.css'),
  tags$style(
    "
input#searchText_shinyWidgets {
    
    width: 500px;
}
"),
  
  div(
    style = 'width: 60%;margin: 0 auto;',
    h1('O Input Search no Shiny: shinyInput()'),
    
    h2('Pacote shinyWidget'),
    br(),
    class = 'search' ,
    
    searchInput(
      inputId = "searchText_shinyWidget",
      label = NULL,
      placeholder = "Escolha Seu País",
      btnSearch = icon("magnifying-glass"),
      btnReset = icon("xmark"),
      value = 'Chile',
      resetValue = 'Brazil',
      width = "100%"
    ),
    
    htmlOutput("input_searchText"),
    
    reactable::reactableOutput('gapminder_table')
   
  )
)

server <- function(input, output, session) {
  
  output$input_searchText <- renderPrint({
    h1(input$searchText_shinyWidget)
  })
  
  output$gapminder_table <- reactable::renderReactable({
    req(input$searchText_shinyWidget)
    reactable::reactable(gapminder::gapminder %>% filter(country == input$searchText_shinyWidget),pagination = FALSE)
  })
  
}

options(shiny.autoreload = TRUE)


shinyApp(ui, server)
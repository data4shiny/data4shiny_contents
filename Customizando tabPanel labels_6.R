library(shiny)
library(shinyWidgets)

ui <- fluidPage(
  includeCSS(path = 'www/css/style_s5.css'),
  
#************* CONTEUDO 1 ****************************************
  div(class = 'conteudo_1',
    h3('Customizando tabsetPanels no Shiny com CSS'
       ),
    
    class = 'overview', style = 'height: 500px;margin: 2em;',
    tags$br(),
    tags$br(),
    div(class = 'btn_0',
        tabsetPanel(
          id= 'tabset_panels_0',
          type = 'tabs',
          tabPanel(title = 'Panel 1'),
          tabPanel(title = 'Panel 2'),
          tabPanel(title = 'Panel 3')
        )),
    tags$br(),
    tags$br(),
    div(class = 'btn_1',
        tabsetPanel(
          id= 'tabset_panels_1',
          type = 'tabs',
          tabPanel(title = 'Panel 1'),
          tabPanel(title = 'Panel 2'),
          tabPanel(title = 'Panel 3')
        )),
    tags$br(),
    tags$br(),
    
    div(class = 'btn_2',
        tabsetPanel(
          id= 'tabset_panels_2',
          type = 'tabs',
          tabPanel(title = 'Panel 1'),
          tabPanel(title = 'Panel 2'),
          tabPanel(title = 'Panel 3')
        )),
    tags$br(),
    tags$br(),
    
    div(class = 'btn_3',
        tabsetPanel(
          id= 'tabset_panels_3',
          type = 'tabs',
          tabPanel(title = 'Panel 1'),
          tabPanel(title = 'Panel 2'),
          tabPanel(title = 'Panel 3')
        )),
      
    
    tags$br(),
    tags$br(),
    
    div(class = 'btn_4',
        tabsetPanel(
          id= 'tabset_panels_4',
          type = 'tabs',
          tabPanel(title = 'Panel 1'),
          tabPanel(title = 'Panel 2'),
          tabPanel(title = 'Panel 3')
        )),
    
    tags$br(),
    tags$br(),
    
    div(class = 'btn_5',
        tabsetPanel(
          id = 'tabset_panels_5',
          type = 'tabs',
          tabPanel(title = 'Panel 1'),
          tabPanel(title = 'Panel 2'),
          tabPanel(title = 'Panel 3')
        )),
    tags$br(),
    tags$br(),
    
    div(class = 'btn_6',
        tabsetPanel(
          id= 'tabset_panels_6',
          type = 'tabs',
          tabPanel(title = tags$span('Panel 1')),
          tabPanel(title = tags$span('Panel 2')),
          tabPanel(title = tags$span('Panel 3'))
        ))
    
    
    
    ))

server <- function(input, output, session) {
  
}

shinyApp(ui, server)
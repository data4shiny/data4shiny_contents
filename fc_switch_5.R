library(tidyverse)
# 
dia_da_semana <- 3

if (dia_da_semana == 1) {
  resultado <- "Domingo"
} else if (dia_da_semana == 2) {
  resultado <- "Segunda-feira"
} else if (dia_da_semana == 3) {
  resultado <- "Terça-feira"
} else if (dia_da_semana == 4) {
  resultado <- "Quarta-feira"
} else if (dia_da_semana == 5) {
  resultado <- "Quinta-feira"
} else if (dia_da_semana == 6) {
  resultado <- "Sexta-feira"
} else if (dia_da_semana == 7) {
  resultado <- "Sábado"
} else {
  resultado <- "Dia inválido"
}

print(resultado)
 
## # Exemplo de uso da função switch
dia_da_semana <- "quarta"

resultado <- switch(
                    dia_da_semana,
                    segunda = "Início da semana",
                    terca = "Dia de trabalho",
                    quarta = "Metade da semana",
                    quinta = "Próximo do final de semana",
                    sexta = "Sextou!",
                    default = "Dia não reconhecido"
)

print(resultado)


library(shiny)
library(dplyr)

ui <- fluidPage(
  selectInput('datasets',label = 'Escolha seu Dataset',
              choices = c('mtcars',
                          'economia',
                          'starwars')),
  
  tableOutput(outputId = 'table')
)

server <- function(input, output, session) {
  data_set <- reactive({
    
    data <- input$datasets
    
    switch(
      data,
      mtcars = mtcars,
      economia = gapminder::gapminder,
      starwars = dplyr::starwars[,1:8]
      )
  })
  
  output$table <-  renderTable({
    data_set()
    
  })
  
}

shinyApp(ui, server)




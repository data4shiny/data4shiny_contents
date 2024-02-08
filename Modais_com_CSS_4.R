library(shiny)
library(tidyverse)
library(shinyWidgets)

# Um vetor qualquer de países.
countries <-
  gapminder::gapminder %>% filter(continent == 'Europe') %>% select(country) %>% pull() %>% unique() %>% as.vector()

# https://dribbble.com/shots/18117494-Settings

#### Função para validar o número do cartão de crédito
validateCreditCard <- function(cardNumber) {
  # Aqui, você pode implementar uma validação mais complexa se necessário
  # Neste exemplo, estamos apenas verificando se o cartão possui 16 dígitos (número típico de cartões de crédito)
  n_digits <- nchar(gsub("\\D", "", cardNumber))
  return(n_digits == 16)
}

ui <- fluidPage(
  
 shiny::includeCSS(path = 'www/css/modal_4.css'),
 
  titlePanel("Settings"),
 
  tabsetPanel(selected = 3,
              
    tabPanel(title = 'Team Settings'),
    
    tabPanel(title = 'Members'),
    
    tabPanel(title = 'Billing',value = 3,
             
             br(),
             br(),
             tags$header(
               class = 'header',
               h3('Finalytic Plan'),
               p('Your plan renews'),
               div(
                 class = 'credit_card',
                 tags$img(src = 'img/visa_logo.png', width = '64px', height = '22px')),
               actionButton("openModalBtn", "Add your Card Info"),
               uiOutput('my_modal'))),
    
    tabPanel(title = 'Team Settings')
    
  ))

server <- function(input, output, session) {
  
  # Função para abrir o modal quando o botão for clicado
  observeEvent(input$openModalBtn, {
    showModal(
      # Modal Dialog UI
      modalDialog(
        id = "creditCardModal",
        title =
          div(class = 'title_div',
              h2("Edit Payment Method")),
        
        size = "m",
        easyClose = TRUE,
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -       
# Nesse espaço "cabe tudo":Esse é o diferencial do Modal.
# No entanto, gosto de explorar com cuidado essa area.
        tags$main(
         div(
           class = 'next_main',
         
            div(
              class = 'inputs', 
              
              div(
                class = 'labels_input',
                h6('Card number'),
                textInput(
                  "cardNumber",
                  width = '100%',
                  placeholder = '1234 1234 1234 1234',
                  div(
                    tags$span("", 
                              class = 'card_number_label',
                              style = 'font-size: 1rem;position: relative;'),
                    tags$img(
                      class = 'img_logo',
                      src = 'img/visa_logo.png',
                      width = '25px',
                      height = '10px' 
                    )
                  )
                )
              ),
              # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
              div(
                class = 'labels_input', 
                h6('Expiration'),
                dateInput(
                  "expiryMonth", "",value = Sys.Date(), format = "mm/yyyy"
                ),
              ),
              div(
                class = 'labels_input', 
                h6('CVS'),
                passwordInput("cvv",placeholder = '123',"")
              ),
              # - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
              div(
                class = 'labels_input',
                style = 'display: flex; align-items: center',
                h6('Country'),
                
                pickerInput(
                  inputId = "country", label = "", selected = 'Germany', choices = countries)
              )
            )
          )
        ),
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
          footer = div(
            class = 'remove_cancel_save_btns',
            style = '',
            
            actionButton(
              "remove_changes_btn",
              tags$span(
                style = 'font-size: 1.25rem;',
                tags$img(src = 'img/trash.svg',width = '20px',height = '20px'),
                "Remove")),
            actionButton(
              "cancel_changes_btn",
              tags$span("Cancelar",style = 'font-size: 1.25rem;')
            ),
            actionButton(
              "save_changes_btn",
              tags$span("Save Changes",style = 'font-size: 1.25rem;')
            )
          ) 

      )
    )
    
  })
  
  
  # Função para fechar o modal quando o botão "Cancelar" for clicado
  observeEvent(input$cancel_changes_btn, {
    removeModal()
  })
  
  # Aqui ja estamos pensando em guardar esse banco de dados. E na interação do Usuário com o dashb
  # 
  # # Função para processar os dados quando o botão "Confirmar" for clicado
  # 
  # observeEvent(input$save_changes_btn, {
  #   
  #   if (!validateCreditCard(input$cardNumber)) {
  #     showModal(
  #       modalDialog(
  #         title = "Erro",
  #         "Número do cartão de crédito inválido. Por favor, verifique e tente novamente.",
  #         easyClose = TRUE
  #       )
  #     )
  #     return()
  #   } 
  
    # Aqui você pode fazer o processamento dos dados do cartão de crédito
    # Por exemplo, pode salvá-los em um banco de dados ou executar outras ações
    # Neste exemplo, vamos apenas imprimir os valores no console
  #   output$my_modal <- renderUI({
  #     div(
  #       p("Número do Cartão:", input$cardNumber, style = 'color: white;'),
  #       p("Número do Cartão:", input$name, style = 'color: white;'),
  # 
  #       p("Nome do Titular:", input$cardName, style = 'color: white;'),
  #       p("Mês de Vencimento:", input$expiryMonth, style = 'color: white;'),
  #       p("Country:", input$country, style = 'color: white;'),
  #       p("PostCode:", input$postcode, style = 'color: white;')
  #     )
  # 
  #   })
  # 
  # 
  #   # Fechando o modal após processar os dados
  #   removeModal()
  # })
}

shinyApp(ui, server)





 
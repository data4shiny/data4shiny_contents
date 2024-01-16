library(shiny)

ui <- fluidPage(
  tags$style(
    "
     @import url('https://fonts.googleapis.com/css2?family=Exo+2:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');

    *{
      font-family: 'Exo 2', sans-serif;
    }


    body{
      background: url('../css/Simple Shiny.svg');
      background: lightblue;
      background-position: center;
      background-repeat: no-repeat;
      background-size: cover;
      height: 100vh;
    }


      .container-fluid {
        width: 80%;
        margin-top: 5em;
        background: white;
      }

/******************************************************************/
      .dropdown.bootstrap-select.form-control.bs3{
        width: fit-content;
        padding: 0.5em;
        background: transparent;
        border: none;
      }

      button.btn.dropdown-toggle.btn-default {
        margin: 0px;
        padding: 0.25em;
        border: none;
      }


/******************************************************************/
      button.btn{

        padding: 0.25em 0.5em;
        margin: .25em 0.5em;
        border-radius: 6px !important;
      }

       button.btn.checkbtn.btn-success{
        background: #484848;
        color: white;
        border:none;
      }

      button.btn.checkbtn.btn-success.active {
        font-weight: 700;
        color: #FFB67A;
        }

"
  ),

  tags$main(

    h3("Escondendo Painéis no Shiny updateTabSetPanel()",
       style = 'text-align: left;font-weighT: 700;'),


    div(
      class = 'panels_controls',
      sidebarLayout(
        sidebarPanel(
          selectInput("controller", "Show", choices = paste0("panel",1:3))
        ),
        mainPanel(
          tabsetPanel(
            id = "inTabset",
            type = "hidden",
            tabPanel(title = "Panel1", value = "panel1", h1("Conteudo Painel 1")),
            tabPanel(title = "Panel2", value = "panel2", h1("Conteudo Painel 2")),
            tabPanel(title = "Panel3", value = "panel3", h1("Conteudo Painel 3"))
          )
        ))
    ) 
  )

)
server <-
  function(input, output, session) {
    
    observeEvent(input$controller, {
      
      updateTabsetPanel(session,
                        "inTabset",
                        selected = input$controller)
    })
  }

shinyApp(ui, server)





















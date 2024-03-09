library(shiny)
library(fontawesome)

ui <- fluidPage(
  
  # includeCSS(path = 'www/css/login_style_1.css'),
  tags$style("
 @import url('https://fonts.googleapis.com/css2?family=Playfair+Display:ital,wght@0,400;0,500;0,600;0,700;0,800;0,900;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');

*{
font-family: 'Playfair Display',serif;

}

body{
	margin: 0;
	padding: 0;
  background-color: #0e6cc4;
	overflow-x:hidden;
	overflow-y:hidden;S

}

h1 {
  font-weight: 600;
  color: #fff;
  text-align: center;
  font-size: 4em;
}

p{
    color: #fff;
    font-style: oblique;
    font-size: 1em;
    width: 80%;
    flex: 0 ;
    display: inline-block;
}

.container-fluid{

    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
}

.form_main {
  width: 50%;

}

.form_main form{
  margin-bottom: 1em;
  display: flex;
  flex-direction: column;
  justify-content: space-around;
}

.form_main form input{
    background-color: white;
    border-width: 0;
    color: #fff;
    height: 3rem;
    width: 100%;
    font-size: 1.25rem;
    border:1px solid #fff;
    padding: 1.5em;
    margin: 1em 0;
}


.form_main form button{
    background: whitesmoke;
    padding: 1em;
    font-size: 1.25em;
    font-weight: 700;
    color: black;
    width: 100%;
}

.text{
  text-align: center;
  width: 100%;
}


#icons{
  display: flex;
    justify-content: center;
    align-items: flex-start;
}

#icons i{
    font-weight: 900;
    padding: 0 2em;
    font-size: 1.5em;
}

@media (450px <= width <= 900px) {

.form_main {
    width: 90%;
    margin: 0 auto;
    position: relative;
    top: 0;
    left: 0;
  }

}

@media ( width <= 449px){

p{
    width: 100%;
  }
  .form_main {
    width: 100%;
    padding: 2em;
    margin: 1.5em;
    top: 0;
    left: 0;
  }

}
             "),
  
  tags$main(class = 'form_main',
            
            tags$h1("Sign up to access your Shiny Dashboard"),
            
            tags$form(
              id = 'form',
              div(
                tags$p("* Required Fields"),
                textInput('email',label = NULL,placeholder = 'Email*',width = '100%'),
                textInput('senha',label = NULL,placeholder = 'Password*',width = '100%'),
                actionButton(inputId = 'sign',label = 'SIGNUP'),
                tags$p(class = 'text',
                       "Read our privacy policy for more information."),
                tags$div(
                  id = 'icons',
                  fa_i(name = "envelope", style = 'color: whitesmoke; '),
                  fa_i(name = "twitter", style = 'color: whitesmoke; '),
                  fa_i(name = "globe", style = 'color: whitesmoke; ')
                )
              )
            ))
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)


 
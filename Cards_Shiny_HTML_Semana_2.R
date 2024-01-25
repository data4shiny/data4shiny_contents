
library(shiny)

card1 <- htmltools::HTML(
    '
 <div class="card">
   <a class="card1" href="#">
    <p>This is heading</p>
    <p class="small">Card description with lots of great facts and interesting details.</p>
    <div class="go-corner" href="#">
      <div class="go-arrow">
        →
      </div>
    </div>
  </a>
</div>
  '
)
 
card2 <- htmltools::HTML(
  '
<div class="card">
 <div class="image"></div>
  <div class="content">
    <a href="#">
      <span class="title">
        Lorem ipsum dolor sit amet consectetur adipisicing elit.
      </span>
    </a>

    <p class="desc">
      Lorem ipsum dolor sit amet, consectetur adipisicing elit. Recusandae
      dolores, possimus pariatur animi temporibus nesciunt praesentium 
    </p>

    <a class="action" href="#">
      Find out more
      <span aria-hidden="true">
        →
      </span>
    </a>
  </div>
</div>
  '
)


ui <- fluidPage(
  tags$style(
    'body{
    background: black;
    }
    
    .main_cards {
    display: flex;
    gap: 2em;
    margin: 10rem;

    }
    '
  ),
  includeCSS(path = 'www/css/style2.css'),
  tags$div(
    class = 'main_cards',
    card1,
    card2
  )
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)
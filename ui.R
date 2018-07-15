# wc18-age ui
# matt dray
# july 2018

library(shiny)

fluidPage(
  
  # TITLE
  
  titlePanel(
    "How many footballers at World Cup 2018 are younger than you?"
  ),  # end titlePanel()
  
  # INPUT PANEL
  
  column(
    4,
    wellPanel(
      dateInput(
        "date",
        label = "Your birth date (YYYY-MM-DD format)",
        value = Sys.Date()
      )  # end dateInput()
    )  # end wellPanel()
  ),  # end column()
  
  # MAIN PANEL
  
  column(
    width = 6,
    textOutput("date_text"),
    HTML("<p>"),
    textOutput("player_count"),
    HTML("<p>"),
    DT::dataTableOutput("player_datatable")
  )  # end column()
  
)  # end fluidPage()
# wc18-age ui
# matt dray
# july 2018

library(shiny)
library(shinythemes)

fluidPage(theme = shinytheme("united"),
  
  # TITLE
  
  titlePanel(
    "How many footballers at World Cup 2018 were younger than you?"
  ),  # end titlePanel()
  
  # INPUT PANEL
  
  column(
    4,
    wellPanel(
      dateInput(
        "date",
        label = "Your birth date (YYYY-MM-DD format)",
        value = ymd("1980-01-01"),
        startview = "decade"
      ),  # end dateInput()
      helpText("Click the box to choose the year, the month and the day of your birth."),
      helpText("App by @mattdray. Data collected by github.com/AllezCannes.")
    )  # end wellPanel()
  ),  # end column()
  
  # MAIN PANEL
  
  column(
    width = 6,
    h2("You"),
    HTML("<p>"),
    textOutput("date_text"),
    HTML("<p>"),
    h2("Younger than you"),
    HTML("<p>"),
    textOutput("player_count"),
    HTML("<p>"),
    textOutput("parent_count"),
    HTML("<p>"),
    h2("List of whippersnappers"),
    p("These players are younger than you."),
    HTML("<p>"),
    DT::dataTableOutput("player_datatable")
  )  # end column()
  
)  # end fluidPage()

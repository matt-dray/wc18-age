# wc18-age ui
# matt dray
# july 2018

library(shiny)

fluidPage(
  titlePanel(
    "How many footballers at World Cup 2018 are younger than you?"
  ),  # end titlePanel()
  
  column(
    4,
    wellPanel(
      dateInput(
        "date",
        label = "Date input: yyyy-mm-dd",
        value = Sys.Date()
      )  # end dateInput()
    )  # end wellPanel()
  ),  # end column()
  
  column(
    width = 6,
    verbatimTextOutput("dateText")
  )  # end column()
  
)  # end fluidPage()
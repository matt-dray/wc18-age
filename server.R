# wc18-age server
# matt dray
# july 2018

library(shiny)

function(input, output, session) {
  
  # input$date and others are Date objects. When outputting
  # text, we need to convert to character; otherwise it will
  # print an integer rather than a date.
  output$dateText  <- renderText({
    paste("input$date is", as.character(input$date))
  })  # end renderText
  
}  # end function()
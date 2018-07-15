
# july 2018

library(shiny)

function(input, output, session) {
  
  # DATE OUTPUT
  
  # input$date and others are Date objects. When outputting
  # text, we need to convert to character; otherwise it will
  # print an integer rather than a date.
  
  output$date_text  <- renderText({
    
    paste0("You birth date is ", as.character(input$date), ".")
  
    })  # end renderText
  
  # COUNT OF PLAYERS OUTPUT
  
  output$player_count  <- renderText({
    
    num_players <- players %>% 
      filter(dob > ymd(input$date)) %>%
      nrow()
    
    paste0(
      as.character(num_players),
      " players at World Cup 2018 (",
      round(100*(as.numeric(num_players)/(nrow(players))), 0),
      " per cent) were younger than you (listed in the table below)."
    )
    
  })  # end renderText
  
  # DATATABLE OUTPUT
  
  output$player_datatable <- renderDataTable({
    
    num_players <- players %>%
      filter(dob > ymd(input$date)) %>% 
      arrange(dob, team, caps)
    
  })
  
}  # end function()
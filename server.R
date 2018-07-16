# wc18-age ui
# matt dray
# july 2018

library(shiny)

function(input, output, session) {
  
  # DATE OUTPUT
  
  # input$date and others are Date objects. When outputting
  # text, we need to convert to character; otherwise it will
  # print an integer rather than a date.
  
  output$date_text  <- renderText({
    
    paste0(
      "Your birth date is ",
      as.character(input$date),
      ". You were ", 
      floor(as.numeric(difftime(ymd("2018-06-14"), ymd(input$date)), units="days") / 365.242),
      " years old at the start of the World Cup on 14 June 2018."
    )
  
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
      " per cent) were younger than you."
    )
    
  })  # end renderText
  
  # COUNT OF PLAYERS YOU COULD PARENT OUTPUT
  
  output$parent_count  <- renderText({
    
    num_players_parent <- players %>% 
      filter(dob > (ymd(input$date) + years(18))) %>%
      nrow()
    
    paste0(
      "You could be a parent to ",
      as.character(num_players_parent),
      " players at World Cup 2018 (",
      round(100*(as.numeric(num_players_parent)/(nrow(players))), 0),
      " per cent) -- i.e. there's 18 years or more between you."
    )
    
  })  # end renderText
  
  # DATATABLE OUTPUT
  
  output$player_datatable <- renderDataTable({
    
    num_players <- players %>%
      filter(dob > ymd(input$date)) %>% 
      arrange(dob, team, caps)
    
  })
  
}  # end function()
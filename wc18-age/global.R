# swc18-age global
# matt dray
# july 2018

# code by david kane from
# https://rviews.rstudio.com/2018/06/14/player-data-for-the-2018-fifa-world-cup/

library(tidyverse)  # 
library(stringr)  # string manipulation
library(lubridate)  # date manipulation
library(cowplot)  # nice plots
# library(tabulizer)  # tables from pdfs

url <- "https://github.com/davidkane9/wc18/raw/master/fifa_player_list_1.pdf"
out <- extract_tables(url, output = "data.frame")

pdf_data <- bind_rows(out) %>% 
  as_tibble() %>% 
  
  # Make the variable names more tidy-like.
  
  rename(team = Team,
         number = X.,
         position = Pos.,
         name = FIFA.Popular.Name,
         birth_date = Birth.Date,
         shirt_name = Shirt.Name,
         club = Club,
         height = Height,
         weight = Weight) %>% 
  
  # Country names are contentious issues. I modify two names because I will
  # later need to merge this tibble with data from Wikipedia, which uses
  # different names.
  
  mutate(team = case_when(
    team == "Korea Republic" ~ "South Korea",
    team == "IR Iran" ~ "Iran",
    TRUE ~ team)) %>% 
  
  # league and club should be separate variables. We also want birth_date to be
  # a date and to have an age variable already calculated.
  
  mutate(birth_date = dmy(birth_date),
         league = str_sub(club, -4, -2),
         club = str_sub(club, end = -7),
         age = interval(birth_date, "2018-06-14") / years(1))
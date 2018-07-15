# swc18-age global
# matt dray
# july 2018

# originally tried code by david kane from
# https://rviews.rstudio.com/2018/06/14/player-data-for-the-2018-fifa-world-cup/
# but had trouble installing the tabulizer package due to java dependency


# Packages ----------------------------------------------------------------


library(dplyr)  # data manipulation
library(stringr)  # string manipulation
library(lubridate)  # date manipulation
library(janitor)


# Read data ---------------------------------------------------------------


# data prepared by AllezCannes (allez les bleus)
# about: https://github.com/AllezCannes/WorldCupSquads/blob/master/README.md
# data: https://github.com/AllezCannes/WorldCupSquads


players_clean <- readRDS("data/players.rds") %>%
  clean_names() %>% 
  mutate(
    date_no_age = str_replace(date_of_birth_age, " \\(.*\\)", ""),
    dob = dmy(date_no_age)
  ) %>% 
  select(
    name = player, dob, team = countries, caps, club, pos = playing_position
  )

saveRDS(players_clean, "data/players_clean.rds")

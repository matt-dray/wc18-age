# swc18-age global
# matt dray
# july 2018

# data prepared by AllezCannes (allez les bleus)
# about: https://github.com/AllezCannes/WorldCupSquads/blob/master/README.md
# data: https://github.com/AllezCannes/WorldCupSquads


# Packages ----------------------------------------------------------------

library(dplyr)
library(stringr)
library(lubridate)

# read data
players <- readRDS("data/players.rds") %>% 
  mutate(
    date_no_age = str_replace(Date.of.birth..age., " \\(.*\\)", ""),
    dob = dmy(date_no_age)
  )

dmy(players$Date.of.birth..age.)



# originally tried code by david kane from
# https://rviews.rstudio.com/2018/06/14/player-data-for-the-2018-fifa-world-cup/
# but had trouble installing the tabulizer package due to java dependency
# swc18-age global
# matt dray
# july 2018


# Packages ----------------------------------------------------------------


library(shiny)
library(dplyr)
library(lubridate)
library(DT)


# Data --------------------------------------------------------------------


# data prepared by AllezCannes (allez les bleus)
# about: https://github.com/AllezCannes/WorldCupSquads/blob/master/README.md
# data: https://github.com/AllezCannes/WorldCupSquads

players <- readRDS("data/players_clean.rds")
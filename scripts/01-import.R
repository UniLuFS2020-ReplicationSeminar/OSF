library("tidyverse")
library("rio")
library("here")

WVS <- rio::import(here::here("data", "WVS_trends_3_0.dta"))

library("tidyverse")
library("rio")
library("here")

ERD <- haven::read_dta(here::here("data", "ERD e 2020 no labels.dta"))

#clean variables of unemployment (v703e in; v705e out) for defined borders according to codebook
ERD <- ERD %>% 
  filter(v703e >= 0 & v703e <= 22.2) %>%
  filter(v705e >= 0.1 & v705e <= 22.2)

#remove missing values
ERD <- ERD %>%
  filter(v415e != 88888)

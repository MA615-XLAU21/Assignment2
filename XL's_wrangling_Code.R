library(tidyverse)
library(dplyr)
library(readxl)
library(data.table)
library(readr)
library(RColorBrewer)
dataset_fertility <- read_csv("https://raw.githubusercontent.com/MA615-XLAU21/Assignment2/main/children_per_woman_total_fertility.csv")
#dataset_fertility is total fertility rate 

dataset_femployrate <- read_csv("https://raw.githubusercontent.com/MA615-XLAU21/Assignment2/main/females_aged_15plus_employment_rate_percent.csv")
#dataset_femployrate is percentage of population that 15+ females are employed 

#Since data from [female_15_employ] only contained data from 1990-2021, I choose data from 1990-2021 in [children_per_woman_total_fertility]
#I will analyze the relationship between fertility rate and employment rate.
#inner_join(y,by="country")

n_country <- dim(dataset_femployrate)[1]
n_year <- dim(dataset_femployrate)[2] - 1

country <- vector()

for (i in 1: n_country) {
  country <- c(country, rep(dataset_femployrate$country[i], n_year))
}

fertility <- vector()
for (i in 1: n_country){
  a <- dataset_fertility[i, ]
  b <- unlist(a)
  fertility <- c(fertility, as.numeric(b[2:(n_year + 1)]))
}
femployrate <- vector()
for (i in 1: n_country) {
  a <- dataset_femployrate[i, ]
  b <- unlist(a)
  femployrate <- c(femployrate, as.numeric(b[2:(n_year + 1)]))
}
year <- as.numeric(rep(c(1990:2021), n_country))
data_join <- data.frame(country, year, fertility, femployrate)
#view(data_join)
#str(data_join)
#summary(data_join)

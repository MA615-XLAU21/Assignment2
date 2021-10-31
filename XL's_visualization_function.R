

#I choose Top Five Fastest Developing Countries from https://borgenproject.org/top-5-fastest-developing-countries/
#Argentina, India , China, Brazil, Guyana

#Then I choose top Five developed Countries
#United States, United Kingdom and France,Poland,Spain
visualization_function <- function(data_join, country1, country2, country3, country4, country5, indicators){
  newdata <- data_join %>%
    filter(country == country1)
  newdata <- rbind(newdata,filter(data_join,country == country2))
  newdata <- rbind(newdata,filter(data_join,country == country3))
  newdata <- rbind(newdata,filter(data_join,country == country4))
  newdata <- rbind(newdata,filter(data_join,country == country5))
  
if(indicators == "fertility"){
  #data1ed <- data_join %>%
  #  filter(country == country1)
  #data2ed <- data_join %>%
  #  filter(country == country2)
  #data3ed <- data_join %>%
  #  filter(country == country3)
  #data4ed <- data_join %>%
  #  filter(country == country4)
  #data5ed <- data_join %>%
  #  filter(country == country5)
  ##newdata <- rbind(data.frame(country = data1ed$country, year = data1ed$year, fertility = data1ed$fertility),
  ##                 data.frame(country = data2ed$country, year = data2ed$year, fertility = data2ed$fertility),
  ##                 data.frame(country = data3ed$country, year = data3ed$year, fertility = data3ed$fertility),
  ##                  data.frame(country = data4ed$country, year = data4ed$year, fertility = data4ed$fertility),
  ##                 data.frame(country = data5ed$country, year = data5ed$year, fertility = data5ed$fertility))
 
  ggplot(data = newdata, mapping = aes(x = year, y = fertility))+
           geom_point(mapping = aes(color = country)) +
           geom_smooth(method = 'loess',formula=y~x) +geom_line(mapping = aes(color = country))+ xlab("Year") + ylab("Fertility Rate")
  
  }

#if(indicators == "femployrate") 
  else{
  #data1ed <- data_join %>%
  #  filter(country == country1)
  #data2ed <- data_join %>%
  #  filter(country == country2)
  #data3ed <- data_join %>%
  #  filter(country == country3)
  #data4ed <- data_join %>%
  #  filter(country == country4)
  #data5ed <- data_join %>%
  #  filter(country == country5)
  #newdata <- rbind(data.frame(country = data1ed$country, year = data1ed$year, femployrate = data1ed$femployrate),
  #                 data.frame(country = data2ed$country, year = data2ed$year, femployrate = data2ed$femployrate),
  #                 data.frame(country = data3ed$country, year = data3ed$year, femployrate = data3ed$femployrate),
  #                 data.frame(country = data4ed$country, year = data4ed$year, femployrate = data4ed$femployrate),
  #                 data.frame(country = data5ed$country, year = data5ed$year, femployrate = data5ed$femployrate))

  ggplot(data = newdata, mapping = aes(x = year, y = femployrate ))+
    geom_point(mapping = aes(color = country)) +
    geom_smooth(method = 'loess',,formula=y~x) +geom_line(mapping = aes(color = country))+ xlab("Year") + ylab("15+ Female Employment Rate")
  
}
}
##I didn't modify the essential content of the homework, 
##just modified the function part to be simpler. 
##The main content remains the same, and the overall look will be more concise. 
##Especially newdata does not need to be written twice, 
##so it is easier to put it on the outermost layer
    
  
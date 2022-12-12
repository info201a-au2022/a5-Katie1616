library(tidyverse)
library(dplyr)
library(ggplot2)

co_df <- read.csv("C:\\Users\\Katie\\Documents\\info201\\data\\owid-co2-data.csv")
View(co_df)

min_year<- min(co_df$year)
max_year<- max(co_df$year)
countries <- summarize(group_by(co_df, country))


  ggplot(co_df, aes(x=year, y=population)) +
       geom_line()

  
  #polluates_map <- (
  #  data = co_df, values = "pop", color = "black",
 # ) +
   # coord_fixed(1) +
   # blank_theme +
   # scale_fill_gradientn(
   #   colours = c("white", "blue"),
    #  breaks = c(10, 100, 1000, 10000),
   #   trans = "log10", name = "Black Jail Population"
    #) +
    #labs(title = "CO2 by COuntry", subtitle = "Black Jail Population") +
    #theme(legend.position = "right")
  
# ---------------------------------------------
  
  
  countries_co2 <- co_df %>%
    select(country, co2)%>%
    filter(country=="Afghanistan")%>%
    mutate()
  
  data_visualization_1 <- ggplot(data = countries_co2) +
    geom_col(mapping = aes(x = year, y = co2)) +
    labs(x = "Years", y = "CO2 Emissions", title = "Changes in CO2 Emissions")
  data_visualization_1
  
  ggplot(data = co_df) +
    geom_col(mapping = aes(x = sliderInputyear, y = co2)) +
    labs(x = "Years", y = "CO2 Emissions", title = "CO2 Emissions in ")
  
  
  min_year<- min(co_df$year)
  max_year<- max(co_df$year)
  countries <- summarize(group_by(co_df, country))
  
  
  countries_co2 <- co_df %>%
    select(country, co2)%>%
    filter(country=="Afghanistan")%>%
    mutate()
  countries_co2
#----------------------------------------------
  
  data_visualization_1 <- ggplot(data = co_df) +
    geom_col(mapping = aes(x = year, y = co2)) +
    labs(x = "Years", y = "CO2 Emissions", title = "Changes in CO2 Emissions during COVID-19")
  data_visualization_1
  
  countries_co2 <- co_df %>%
    filter(country=="Afghanistan")%>%
    select(country, co2,year)%>%
    mutate()
  countries_co2
  
  line_plot <- ggplot(countries_co2) +
    geom_col(mapping = aes(x = year, y = co2)) +
    labs(x = "Years", y = "CO2 Emissions", title = "Changes in CO2 Emissions")
  line_plot
  
    max_year_co2 <- co_df%>%
      max(co2)%>%
      select(year)
    max_year_co2

    max_country_co2 <- co_df %>% 
      filter(co2 == max(co2, na.rm = T)) %>% 
      pull(country)  
    max_country_co2
    
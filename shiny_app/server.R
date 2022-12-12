# A5



# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(tidyverse)

co2_df <- read_csv("C:\\Users\\Katie\\Documents\\info201\\data\\owid-co2-data.csv")
#source("../functions.R")

# Define server logic required to draw a histogram
#shinyServer(function(input, output) {
min_year<- min(co_df$year)
max_year<- max(co_df$year)
countries <- summarize(group_by(co_df, country))
country_picked <- input$country_selected

max_co2 <- max(co_df$co2)
max_year_co2 <- co_df %>% 
  filter(co2 == max(co2, na.rm = T)) %>% 
  pull(year) 

max_country_co2 <- co_df %>% 
  filter(co2 == max(co2, na.rm = T)) %>% 
  pull(country) 

  
server <- function(input, output) {
  output$values <- renderText({
    return(paste(country_max_co2, " is the country with the highest amount of CO2. 
            They had a maximun CO2 emission of", 
                 max_co2, "in the year ", max_year_co2))
  })
    
    country_picked <- input$country_selected
    output$line<- renderPlot({
      
      countries_co2 <- co_df %>%
        filter(country==input$selected_country)%>%
        select(country, year, co2, year)%>%
        mutate()
      
      line_plot <- countries_co2 %>%
        ggplot() +
        geom_col(mapping = aes(x = year, y = co2)) +
        labs(x = "Years", y = "CO2 Emissions", title = "Changes in CO2 Emissions")
        
        line_plot
        })
    
}

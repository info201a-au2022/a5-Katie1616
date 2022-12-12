#A5



# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

source("../functions.R")

# Use a fluid Bootstrap layout
fluidPage(    
  
  # Define the first page content; uses `tabPanel()` and `sidebarLayout()`
  # layout functions together (as an example)
  page_one <- tabPanel(
    "Introduction", # label for the tab in the navbar
    titlePanel("Introduction"), # show with a displayed title
    sidebarLayout(
    sidebarPanel(
      p("Katie Hulst | khulst@uw.edu"), 
      p("Assignment 5: Data Applications"),
      p("Section AE-1"),
    ),
    mainPanel(
      h3("Introduction"),
      p("Over the course of the century we have seen an increase in carbon 
        emissions. This is due to our ever growing population and industrialization. "), 
      textOutput("value"),
      p("This gives you a very high level overview of the maximum CO2 emissions,
        which is important for understanding the CO2 emission around the globe. ")
      
    )
  )
  ),
  
  # Define content for the second page
  page_two <- tabPanel(
    "Interactive Page", # label for the tab in the navbar
    titlePanel("Interactive Page"), # show with a displayed title
    # This content uses a sidebar layout
    sidebarLayout(
      sidebarPanel(
        year_selected <- sliderInput("range", "Year:",
                    min = (min_year), max = (max_year),
                    value = c(min_year, max_year)
                    ),
        country_selected <- selectInput("Country", "Country:", 
                    choices=countries)
      ),
      mainPanel(
        plotOutput("line"),
        p("This chart shows how how the amount of CO2 differs from country to 
        country. From this chart we can gave what countries contribute the 
          most CO2 emissions and which contribute the least. ")
      )
    )
  )
  
  # Define content for the third page
  #page_three <- tabPanel(
   # "Interactive Page 2 ",
   # titlePanel("Line Chart"),
    # This content uses a sidebar layout
   # sidebarLayout(
    #  sidebarPanel(
    #    h3("Summary:"),
      #  p("insert")
      #),
      #mainPanel(
       # plotOutput("line")
      #)
    #)
  )


# Pass each page to a multi-page layout (`navbarPage`)
ui <- navbarPage(
  "A5: Katie Hulst", # application title
  page_one,         # include the first page content
  page_two         # include the second page content
  #page_three        # include the third page content

)
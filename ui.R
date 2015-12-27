
library(shiny)
library(ggplot2)

dataset <- worldeconmydata

shinyUI(fluidPage(
  
  title = "Time Series",
  
  plotOutput('plot'),
  
  hr(),
  
  fluidRow(
    column(3,
           h4("Time Series"),
           sliderInput('years', 'Range of Years', 
                       min=1960, max=2015,
                       value=c(1990,2010), 
                       step=1, round=0),
           br()
    ),
    column(8, offset = 1,
           selectizeInput('wie', 'World Economic Indicator', names(dataset), width = '200%', 
          multiple = TRUE, options = list(maxItems = 1))
    )
  )
))
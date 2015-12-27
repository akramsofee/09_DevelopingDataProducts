
library(shiny)
library(ggplot2)

shinyServer(function(input, output) {
  
  
  
  dataset <- reactive({
    worldeconmydata[which(worldeconmydata$Year <= input$years[2] & worldeconmydata$Year >= input$years[1]),c('Year',input$wie)]
  })
  
  output$plot <- renderPlot({
    
    p <- plot(dataset())

  })
  
})




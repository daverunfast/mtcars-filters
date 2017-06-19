
library(ggplot2)

function(input, output) {
  
  # Filter data based on number of cylinders and number of gears
  output$table <- renderDataTable({
    data <- mtcars
    if (input$cyl != "All") {
      data <- data[data$cyl == input$cyl,]
    }
    if (input$gear != "All") {
      data <- data[data$gear == input$gear,]
    }
    data
  })
  
}

library(ggplot2)

fluidPage(
  # write title
  titlePanel("Show MTCARS Data with Filters"),
  # write select inputs
  fluidRow(
    column(4, selectInput("gear",
                          "Gears:",
                          c("All",
                          unique(as.character(mtcars$gear))))
    ),
    column(4,selectInput("cyl",
                         "Cylinders:",
                         c("All",
                         unique(as.character(mtcars$cyl))))
    )
  ),
  
  # Write table 
  fluidRow(
    dataTableOutput("table")
  )
)
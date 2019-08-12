#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    
    fieldToDescription = list (
        "mpg"  = "Miles/(US) gallon",
        "cyl"  = "Number of cylinders",
        "disp" = "Displacement (cu.in.)",
        "hp"   = "Gross horsepower",
        "drat" = "Rear axle ratio",
        "wt"   = "Weight (1000 lbs)",
        "wt"   = "1/4 mile time",
        "vs"   = "Engine Type",
        "am"   = "Transmission",
        "gear" = "Number of forward gears",
        "carb" = "Number of carburetors"
    )
    
    
    #a <- reactive()
    output$distPlot <- renderPlot({
        xlab <- fieldToDescription[[input$xaxis]]
        ylab <- fieldToDescription[[input$yaxis]]
        title <- paste(c("Dependency of", xlab, "and", ylab), sep=" ")
        plot(mtcars[[input$xaxis]],
             mtcars[[input$yaxis]],
             xlab=xlab,
             ylab=ylab,
             main=title
        )
    })

})

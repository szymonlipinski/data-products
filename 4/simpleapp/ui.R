#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    fluidRow(
        column(9, 
               offset=1, 
               h1("Interactive Motor Trend Card Road Tests Chart")
        )
    ),

    fluidRow(
        column(9, 
               offset=1, 
               h3("Choose the variables below to select the chart variables.")
        )
    ),
    
    fluidRow(
        column(4,
            offset=2,
            radioButtons("xaxis", h3("x axis"),
                 choices = list(
                     "Miles/(US) gallon"       = "mpg",
                     "Number of cylinders"     = "cyl",
                     "Displacement (cu.in.)"   = "disp",
                     "Gross horsepower"        = "hp",
                     "Rear axle ratio"         = "drat",
                     "Weight (1000 lbs)"       = "wt",
                     "1/4 mile time"           = "qsec",
                     "Engine Type"             = "vs",
                     "Transmission"            = "am",
                     "Number of forward gears" = "gear",
                     "Number of carburetors"   = "carb"
                 ),
                selected = "mpg")
        ),
        column(4,
               radioButtons("yaxis", h3("y axis"),
                    choices = list(
                        "Miles/(US) gallon"       = "mpg",
                        "Number of cylinders"     = "cyl",
                        "Displacement (cu.in.)"   = "disp",
                        "Gross horsepower"        = "hp",
                        "Rear axle ratio"         = "drat",
                        "Weight (1000 lbs)"       = "wt",
                        "1/4 mile time"           = "qsec",
                        "Engine Type"             = "vs",
                        "Transmission"            = "am",
                        "Number of forward gears" = "gear",
                        "Number of carburetors"   = "carb"
                    ),
                    selected = "cyl")
        )
    ),
    fluidRow(
        column(8,
            offset=1,
            plotOutput("distPlot")
        )
    )
)
)


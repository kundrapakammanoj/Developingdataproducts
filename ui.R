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
shinyUI(navbarPage("Shiny Application",
                   tabPanel("mpg from hp and weight"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            sliderInput("sliderhp",
                        "What is the hp of the car ?:",
                        50,350,
                        value = 80),
            sliderInput("sliderWeight",
                        "What is the weight of the car ?:",
                         1.5,6.0,
                        value = 2)
        ),

        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("plot1"),
            h3("Predicted mpg from model"),
            textOutput("pred1"),
          
        )
       
    
),
tabPanel("About the Data Set",
         h3("Data used in this model is loaded from mtcars using data(mtcars)"),
         helpText("This model helps in predicting mpg uisng two important variables weight and horsepower using regression",
                  "Uisng this model we will see how these two variables are affecting mpg"),
         h3("Important"),
         p("A data frame with 32 observations on 11 variables.")),
    tabPanel("More details about the dataset",
             p("A data frame with 32 observations on 11 variables."),
             
             p("  [, 1]   mpg         Miles/(US) gallon"),
             p("  [, 2]	 cyl	 Number of cylinders"),
             p("  [, 3]	 disp	 Displacement (cu.in.)"),
             p("  [, 4]	 hp	 Gross horsepower"),
             p("  [, 5]	 drat	 Rear axle ratio"),
             p("  [, 6]	 wt	 Weight (lb/1000)"),
             p("  [, 7]	 qsec	 1/4 mile time"),
             p("  [, 8]	 vs	 V/S"),
             p("  [, 9]	 am	 Transmission (0 = automatic, 1 = manual)"),
             p("  [,10]	 gear	 Number of forward gears"),
             p("  [,11]	 carb	 Number of carburetors")
             
             
             
             )))

#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(plotrix)
# Define server logic required to draw a histogram
shinyServer(function(input, output) {
    
 
    
    #model1<-lm(hp~mpg,data = mtcars)
    model1<-lm(mpg~hp+wt,data = mtcars)
    
    model1pred<-reactive({
        hpinput<-input$sliderhp
        weightinput<-input$sliderWeight
        predict(model1,newdata = data.frame(hp=hpinput,wt=weightinput))
        })
    
    output$pred1<-renderText({
        model1pred()
})
    output$plot1<-renderPlot({
        par(mar = c(5, 4, 4, 4) + 0.3)    
        plot(mtcars$mpg,mtcars$hp,pch=16,col=2)
        par(new=TRUE)
        plot(mtcars$mpg,mtcars$wt,pch=17,col=3,axes = FALSE, xlab = "", ylab = "")
        axis(side = 4, at = pretty(range(mtcars$wt)))
        
             
       
    })
})

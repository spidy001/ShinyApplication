library(shiny)
eruptionPredictor <- function(wait) {
        eruptionsLinearModel <- lm(eruptions ~ waiting,data= faithful)
        newdata = data.frame(waiting=wait)
        predict(eruptionsLinearModel, newdata) 
}
shinyServer(
        function(input, output) {
                output$inputValue <- renderPrint(
                        paste(input$wait," ",input$waitingTimeUnit))
        waitingTime <- reactive({
                if(input$waitingTimeUnit == "Seconds")
                         input$wait / 60
                else
                {
                         input$wait
                } 
        })
        output$plot <- renderPlot({
                plot(faithful$waiting,faithful$eruptions,
                     xlab = "Wait time till next eruption (in minutes)",
                     ylab = "Eruption duration(in minutes)",
                     main = "YellowStone National Park Old faithful Geyser 
                           Waiting time till next eruption Vs Eruption duration")
        })                
        output$prediction <- renderPrint({
                     cat("\n","You have entered a Geyser wait time of",
                             input$wait," ",input$waitingTimeUnit,".\n",
                         "Based on your input,the Geyser is expected to erupt ",
                        "for the duration of",
                      eruptionPredictor(waitingTime())
                      ," minutes ")
                })
        })
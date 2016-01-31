library(shiny)
library(knitr)
shinyUI(
        pageWithSidebar(
                # Application title
                headerPanel("Yellowstone Old Faithful Geyser Eruption Duration Prediction"),
                sidebarPanel(
                        numericInput('wait', 
                                  'Enter geyser waiting time till next eruption',
                                     80 , min = 45, max = 5000, step = 1),
                        selectInput("waitingTimeUnit", "Units:",
                                    c("Minutes" = "Minutes",
                                      "Seconds" = "Seconds")),
                        submitButton('Submit')
                ),
                mainPanel(
                        
                        tabsetPanel(
                        tabPanel("Prediction Results",
                                       verbatimTextOutput("prediction")
                                 ),
                        tabPanel("Html Documentaion",
                                 HTML(knitr::knit2html(text = readLines(normalizePath('index.Rmd')), 
                                                       fragment.only = TRUE)))
                        )
                        )
                        )
                )
        


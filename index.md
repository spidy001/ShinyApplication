---

title: "Prediction of US Yellowstone National Park Old Faithful Geyser's eruption duration"
author: "spidy001"
highlighter: highlight.js
output: slidy_presentation
knit: slidify::knit2slides
mode: selfcontained
hitheme: tomorrow
subtitle: null
widgets: []

---
## Introduction

This is an interactive data product developed as part of my course Developing 
Data Products during Coursera's John Hopkins Data Science specialization.

Tools Used - This application was developed using R - a programming 
language for statistical computing and graphics, Shiny -a web framework for R 
to develop interactive web applications , Slidify - a tool that makes it easy 
to create , customize and publish reproducible HTML5 slide decks using R 
Markdowns.R markdown is  way of combining code and documentation in a one single document to produce dynamic documents,presentations and reports from R.

Shiny Application -This program expects the user to input data for Geyser wait 
time and wait time units. wait time is a numeric value  which can be typed in the text box provided or can be selected using up/down arrow keys on the control.Wait time units can be either Minutes or Seconds and can be entered using the drop down provided. By default the application selects a value of 80 minutes for wait time and predicts the eruption duration. Users can re-run the program with a different wait time and Click the Submit button to see the new predicted value.

--- 
## Code Snippets

```r
library(shiny)
        numericInput('wait', 'Enter geyser waiting time till next eruption',
                                     80 , min = 45, max = 5000, step = 1)
        selectInput("waitingTimeUnit", "Units:",
                                    c("Minutes" = "Minutes",
                                      "Seconds" = "Seconds"))
        output$prediction <- renderPrint({
                     cat("\n","You have entered a Geyser wait time of",
                             input$wait," ",input$waitingTimeUnit,".\n",
                         "Based on your input,the Geyser is expected to erupt ",
                        "for the duration of",
                      eruptionPredictor(waitingTime())
                      ," minutes ")
                })
```



---
## Application Details
Based on the historic data in faithful dataset - plots and data presented in the above two slides,a correlation between wait time and eruption duration was observed and Hence a linear regression model was built using this data
to predict Geyser eruption duration.This shiny application applies the model built to predict the Geyser's eruption duration based on the user entered wait time & wait time units. The interactive output is presented in two tabs. First tab has interactive textoutput with the prediction results. Second tab shows the historic data used to develop the prediction algorithm.

---
## Results and Link to the Code
Based on the default wait time of 80 minutes the application produced the 
following output in the first tab.
 
You have entered a Geyser wait time of 80   Minutes .
Based on your input,the Geyser is expected to erupt  for the duration of 4.17622 minutes 


The final application has been published to the shiny server and is 
available at the  link  https://spidy001.shinyapps.io/Project/   
Also all related shiny application code has been deployed is available 
on github at 
https://github.com/spidy001/ShinyApplication
shiny code links
  https://github.com/spidy001/ShinyApplication/blob/master/ui.R
  https://github.com/spidy001/ShinyApplication/blob/master/server.R


---
title: "Prediction of US Yellowstone National Park Old Faithful Geyser's eruption duration"
author: "spidy001"
highlighter: highlight.js
output: pdf_document
job: null
knit: slidify::knit2slides
mode: selfcontained
hitheme: tomorrow
subtitle: null
framework: io2012
widgets: []

---
## Introduction
This is an interactive data product developed as part of my course Developing 
Data Products during Coursera's John Hopkins Data Science specialization.

Tools Used - This application was developed using R - a programming 
language for statistical computing and graphics, Shiny -a web framework for R 
to develop interactive web applications , Slidify - a tool that makes it easy 
to create , customize and publish reproducible HTML5 slide decks using R 
Markdowns.R markdown is  way of combining code and documentation in a one single 
document to produce dynamic documents,presentations and reports from R.

Shiny Application -This program expects the user to input data for Geyser wait 
time and wait time units. wait time is a numeric value  which can be typed in the
text box provided or can be selected using up/down arrow keys on the control.
Wait time units can be either Minutes or Seconds and can be entered using the 
drop down provided. By default the application selects a value of 80 minutes for 
wait time and predicts the eruption duration. Users can re-run the program with 
a different wait time and Click the Submit button to see the new predicted value.

--- 
## Data Summary 
Data Used to develop Prediction Algorithm - For this application a dataset 
called "faithful" from R's built in package datasets was used.This dataset has 
data specific to U.S.A's Yellowstone National Park's Old faithful Geyser.
This dataset shows two variables eruptions and waiting. waiting is the wait time 
between Geyser's eruptions.eruptions is the eruption duration after the specified 
wait time. Both these variables are mentioned in minutes in the datset.
Sample of this data can be found below

```
##   eruptions waiting
## 1     3.600      79
## 2     1.800      54
## 3     3.333      74
## 4     2.283      62
## 5     4.533      85
## 6     2.883      55
```

---
## Historic Data Plots
![plot of chunk unnamed-chunk-2](assets/fig/unnamed-chunk-2-1.png)

---
## Application Details
Based on the historic data in faithful dataset - plots and data presented in the above two slides,a correlation between wait time and eruption duration was observed and Hence a linear regression model was built using this data
to predict Geyser eruption duration.

This shiny application applies the model built to predict the Geyser's eruption duration based on the user entered wait time & wait time units. 

The interactive output is presented in two tabs. First tab has interactive textoutput with the 
prediction results. Second tab shows the historic data used to develop the prediction algorithm.


---
## Results

Based on the default wait time of 80 minutes the application produced the 
following output in the first tab.
 

You have entered a Geyser wait time of 80   Minutes .
Based on your input,the Geyser is expected to erupt  for the duration of 4.17622 minutes 


The final application has been published to the shiny server and is 
available at the  link  https://spidy001.shinyapps.io/Project/   
Also all related shiny application code has been deployed to github. 
The links can be found below.


---

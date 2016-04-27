# Author: Gyan GM
# Date: 2016-04-24
#
# User Interface File for US Population Predictor.

library(shiny)

shinyUI(fluidPage(    
    titlePanel("US Population Predictor"),
    fluidRow(includeMarkdown("Intro.Rmd")),
    tabsetPanel(
      
        tabPanel("Predicted Population",
                 sidebarLayout(
                     sidebarPanel(width = 5,
                                  sliderInput('yr', 
                                              label="Pick a YEAR in the slider menu below: ",
                                              value = 2020, 
                                              min = 2014, 
                                              max = 2040, 
                                              step = 1,
                                              format='####',
                                              width='350px'
                                  
                     )),
                     
                   
                     mainPanel(
                       p("to view the predicted population for the year selected:"),
                       
                       plotOutput('popTrends')
                     )
                 )),
        tabPanel ("Past Population",
                  tableOutput('table')
        ),
        
        tabPanel("Help",
                 # documentation goes here
                 includeMarkdown("ReadMe.Rmd")
                 
        ) 
    )
))


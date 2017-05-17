library(shiny)

USStatesPlot<-function(ccode,state){
        temp<-subset(USStatesData,USStatesData$State==state)
        return(temp)
}
USStatesLabel<-function(ccode,state){
        return(state)
}
library(shiny)
library(reshape2)
library(xlsx)
library(rCharts)
USState <- read.xlsx('data/USHomicideRates.xlsx',header=TRUE,sheetIndex=1)
USStatesData <- melt(USState,id.vars="State")
names(USStatesData) <- c("State","Indicator","Value")

shinyServer(
        function(input, output) {

                # Used to get the state to display above the graph
                output$oiState<-renderText({
                        input$goButton
                        isolate(USStatesLabel("USA",input$state))
                })
                # This will display the chart
                output$Plot3 <- renderChart({
                        input$goButton
                        isolate(datau<-USStatesPlot("USA",input$state))
                        hb2 = hPlot(x = "Indicator", y = "Value", data = datau, type = "bar")
                        hb2$addParams(dom ='Plot3')
                        return(hb2)
                })
                # This will display the instructions
                output$out2 <- renderText({"To use the chart simply select the state and click the <GO> button. 
                                  Data shows the trend by state for homicide rates from 2000 - 2014"})
        })

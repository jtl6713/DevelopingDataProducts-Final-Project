

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
USStatesData < -melt(USState,id.vars="State")
names(USStatesData) <- c("State","Indicator","Value")
Developing Data Products - Final Project
========================================================
author: Joe Logan
date: 14-May 2017
autosize: true
 
 
Project Overview
========================================================
 
This is the final project for the Coursera DDP course. 
This assignment has 2 parts.
 
- Create Shiny Application - [Code located here](https://github.com/jtl6713/DevelopingDataProducts-Final-Project)
- Create this presentation
 
I used the US Homicide rates for this project
 
 
Summary of Data Analysis
========================================================
 
The data was obtained from the [FBI Website](https://deathpenaltyinfo.org/murder-rates-nationally-and-state)
 
The data shows that some state have lower homicide rates during the past 14 years whilst others have increased.
 
The data shows most states increased from 2000 - 2005 but then declined through 2014.
 
The exceptions were in the extreme north east where homicide rates rose from 2005 - 2014.
 
Examples include Maine, Connecticut, Massachusettes, Maine and Vermont
 
 
Quick look at the data structure
========================================================
 

```r
library(xlsx)
library(data.table)
dt <- read.xlsx('data/USHomicideRates.xlsx',header=TRUE,sheetIndex=1)
head(dt)
```

```
       State X2000 X2005 X2010 X2014
1    Alabama   7.4   8.2   5.7   5.7
2     Alaska   4.3   4.8   4.3   5.6
3    Arizona   7.0   7.5   6.4   4.7
4   Arkansas   6.3   6.7   4.6   5.6
5 California   6.1   6.9   4.8   4.4
6   Colorado   3.1   3.7   2.6   2.8
```
 
 
Thank You
========================================================
 
Thank you for taking the time to view my presentation.
 
You can view the application [here](https://jtl6713.shinyapps.io/DevelopingDataProducts-Final-Project/)
 
The code is located [here](https://github.com/jtl6713/DevelopingDataProducts-Final-Project)
 
For more information regarding crime rates in the US please visit this [site](https://en.wikipedia.org/wiki/Crime_in_the_United_States).

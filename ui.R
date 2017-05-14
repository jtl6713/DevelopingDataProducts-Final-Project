library(rCharts)
library(shiny)
library(datasets)

shinyUI(pageWithSidebar(
        headerPanel("Homicide Rates by State"),
        sidebarPanel(
                p(strong(em("To get results click on the <Plot: Homicide Rate by State> tab"))),
                selectInput(inputId="state", label="State", choices=state.name,
                            multiple = FALSE,selected="Alaska"),
                actionButton("goButton", "Go!"),
                hr(),
                
                p(strong(em("Documentation:","Refer to the instuctions tab"))),
                p(strong(em("Github repository:",a("Developing Data Products - Final Project",href="https://github.com/jtl6713/DevelopingDataProducts-Final-Project"))))
        ),
        mainPanel(
                
                tabsetPanel(
                        tabPanel('Homicide Rates',
                                 h5('US Homicide Rate Overview'),
                                 img(src="USHomicideRates.png", height = 400, width =600)
                                 ),
                        tabPanel('Plot: Homicide Rate by State',
                                 h5('2000 - 2014 US State Homicide Data'),
                                 verbatimTextOutput("oiState"),
                                 showOutput("Plot3","highcharts"),
                                 p("US Homicide Rates: ", a("List of US States by Homicide Rate", 
                                                         href = "https://en.wikipedia.org/wiki/List_of_U.S._states_by_homicide_rate")),
                                 p(strong("Data was obtained Wikipedia and imported into an excel database")
                                 )
                        ),
                        tabPanel("Instructions - Using the chart", br(), textOutput("out2"))
                
                )
        
        )
)
)
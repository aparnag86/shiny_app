shinyUI(fluidPage(
  titlePanel("Census Visualisation"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Create demographic maps with 
               information from the 2010 US Census."),
    
      selectInput("var", 
        label = "Choose a variable to display",
        choices = c("Percent White", "Percent Black",
          "Percent Hispanic", "Percent Asian"),
        selected = "Percent White"),
    
      sliderInput("range", 
        label = "Range of interest:",
        min = 0, max = 100, value = c(0, 100))
    ),
  
    mainPanel(
      p("This app creats demographic maps with Information from 2010 US Census. Based on the input selected that is Percent White/Black/Hispanic/Asian and range of intereset the map changes."),
      br(),
      plotOutput("map"))
  )
))

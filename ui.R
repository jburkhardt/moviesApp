library(shiny)

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Movie Finder"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Movie information and user ratings from IMDB.com"),
      sliderInput("year",
                  "Select the Year",
                  min = min(movies$year),
                  max = max(movies$year),
                  value = c(1893,2005)),
      selectInput("genre",
                  "Select a genre",
                  choices = c("All genres","Action", "Animation", "Comedy", "Drama", "Documentary", "Romance", "Short")),
      sliderInput("length",
                  "Length of movie (minutes)",
                  min = min(movies$length),
                  max = 200,
                  value = c(1,200)),
      sliderInput("budget",
                  "Budget of movie ($)",
                  min = min(na.omit(movies$budget)),
                  max = max(na.omit(movies$budget)),
                  value = c(0,max(na.omit(movies$budget)))),
      sliderInput("rating",
                  "Rating",
                  min = 1,
                  max = 10,
                  value = c(1,10)),
      sliderInput("votes",
                  "Number of votes",
                  min = min(movies$votes),
                  max = max(movies$votes),
                  value = c(min(movies$votes),max(movies$votes)))
    ),
    
    mainPanel(
      tabsetPanel(
        tabPanel("Chart", plotOutput("plot")), 
        tabPanel("Data Table", tableOutput("data"))
      )
    )
  )
))
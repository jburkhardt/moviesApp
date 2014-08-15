library(shiny)
library(ggplot2)
data(movies)
shinyServer(function(input, output) {

    output$plot <- renderPlot({
      data <- subset(movies, year >= input$year[1] & year <= input$year[2])
      data <- subset(data, length >= input$length[1] & length <= input$length[2])
      data <- subset(data, budget >= input$budget[1] & budget <= input$budget[2])
      data <- subset(data, rating >= input$rating[1] & rating <= input$rating[2])
      data <- subset(data, votes >= input$votes[1] & votes <= input$votes[2])
      if (input$genre == "Action"){
        data <- subset(data, Action == 1)
      }
      else if (input$genre == "Animation"){
        data <- subset(data, Animation == 1)
      }
      else if (input$genre == "Comedy"){
        data <- subset(data, Comedy == 1)
      }
      else if (input$genre == "Drama"){
        data <- subset(data, Comedy == 1)
      }
      else if (input$genre == "Documentary"){
        data <- subset(data, Documentary == 1)
      }
      else if (input$genre == "Romance"){
        data <- subset(data, Romance == 1)
      }
      else if (input$genre == "Short"){
        data <- subset(data, Short == 1)
      }
      else {
        data
      }
      dataPlot <- head(data[order(data$rating,decreasing = TRUE),],10)
      p <- ggplot(data=dataPlot, aes(y=rating,x= title)) + geom_bar(stat = "identity") + coord_flip()
      p + labs(title = "Top Movies", x = "", y = "Rating")
    })
    
    output$data <- renderTable({
      data <- subset(movies, year >= input$year[1] & year <= input$year[2])
      data <- subset(data, length >= input$length[1] & length <= input$length[2])
      data <- subset(data, budget >= input$budget[1] & budget <= input$budget[2])
      data <- subset(data, rating >= input$rating[1] & rating <= input$rating[2])
      data <- subset(data, votes >= input$votes[1] & votes <= input$votes[2])
      if (input$genre == "Action"){
        data <- subset(data, Action == 1)
      }
      else if (input$genre == "Animation"){
        data <- subset(data, Animation == 1)
      }
      else if (input$genre == "Comedy"){
        data <- subset(data, Comedy == 1)
      }
      else if (input$genre == "Drama"){
        data <- subset(data, Comedy == 1)
      }
      else if (input$genre == "Documentary"){
        data <- subset(data, Documentary == 1)
      }
      else if (input$genre == "Romance"){
        data <- subset(data, Romance == 1)
      }
      else if (input$genre == "Short"){
        data <- subset(data, Short == 1)
      }
      else {
        data
      }
      dataPlot <- head(data[order(data$rating,decreasing = TRUE),],10)
      dataPlot[,c("title","year","length","budget","votes","rating")]
    })
    
    
    
})
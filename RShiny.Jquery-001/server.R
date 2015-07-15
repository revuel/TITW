#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#

# Integrating technologies


# Rshiny + Jquery

# Example 001: Showing Alert after withProgress has finished loading


# Author: Miguel Revuelta Espinosa, revuel@github
# Date: 2015 07 14

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#

shinyServer(function(input, output) {
  
  predicted <- reactive({
    hw <- HoltWinters(ldeaths)
    predict(hw, n.ahead = input$months, 
            prediction.interval = TRUE,
            level = as.numeric(input$interval))
  })
  
  output$dygraph <- renderDygraph({
    
    input$reload
      
    withProgress(message = 'Generating data', detail = "part 0", value = 0, {
        for (i in 1:10) {
          dat <- rbind(data.frame(x = rnorm(1), y = rnorm(1)))
          incProgress(0.1, detail = paste("part", i))
          Sys.sleep(0.2)
        }
        #setProgress(1)
      })
    
    dygraph(nhtemp, main = "New Haven Temperatures") %>% 
      dyRangeSelector(height = 30, strokeColor = "red")
    })
})
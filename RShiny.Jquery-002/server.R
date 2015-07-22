#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#

# Integrating technologies


# Rshiny + Jquery ( using jquery watch solution from: RickStrahl@github )

# Example 002: Showing Alert after shiny plot has finished loading


# Author: Miguel Revuelta Espinosa, revuel@github
# Date: 2015 07 22

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#

shinyServer(function(input, output) {
  
  output$myplot <- renderPlot({
    
    input$reload
    
    example(surf3D)
    
  })
})
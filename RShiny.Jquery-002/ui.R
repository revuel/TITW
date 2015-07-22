#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#

# Integrating technologies


# Rshiny + Jquery ( using jquery watch solution from: RickStrahl@github )

# Example 002: Showing Alert after shiny plot has finished loading


# Author: Miguel Revuelta Espinosa, revuel@github
# Date: 2015 07 22

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#

shinyUI(fluidPage(
  
  tags$head(tags$script(src="js/jquery-watch.js"), 
            tags$script(src="js/myFunctions.js")),
  
  titlePanel("Showing Alert after Rshiny recalculates"),
  
  sidebarLayout(
    
    sidebarPanel(
      actionButton("reload", "Reload!")
    ),
    
    mainPanel(
      plotOutput("myplot")
    )
    
  )
))
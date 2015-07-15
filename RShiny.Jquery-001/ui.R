#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#

# Integrating technologies


# Rshiny + Jquery

# Example 001: Showing Alert after withProgress has finished loading


# Author: Miguel Revuelta Espinosa, revuel@github
# Date: 2015 07 14

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#

shinyUI(fluidPage(
  
  tags$head(tags$script(src="js/myFunctions.js")
            ),
  
  titlePanel("Showing Alert after withProgress"),
  
  sidebarLayout(
    
    sidebarPanel(
      actionButton("reload", "Reload!")
    ),
    
    mainPanel(
      dygraphOutput("dygraph")
    )
    
  )
))
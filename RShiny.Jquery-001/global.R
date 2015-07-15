#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#

  # Integrating technologies
  
  
  # Rshiny + Jquery

  # Example 001: Showing Alert after withProgress has finished loading
  

  # Author: Miguel Revuelta Espinosa, revuel@github
  # Date: 2015 07 14

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#

# · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · ·
#   Install packages
# · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · ·
packages.list <- c("shiny", "dygraphs", "datasets")
new.packages <- packages.list[!(packages.list %in% installed.packages()
                                   [,"Package"])]
if(length(new.packages)) install.packages(new.packages)


# · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · ·
#   Link libraries
# · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · ·
library(shiny)
library(dygraphs)
library(datasets)


# · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · ·
#   Variables
# · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · ·


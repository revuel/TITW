#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#

# Integrating technologies


# Rshiny + Jquery ( using jquery watch solution from: RickStrahl@github )

# Example 002: Showing Alert after shiny plot has finished loading


# Author: Miguel Revuelta Espinosa, revuel@github
# Date: 2015 07 22

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#

# · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · ·
#   Install packages
# · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · ·
packages.list <- c("shiny", "plot3D", "datasets")
new.packages <- packages.list[!(packages.list %in% installed.packages()
                                   [,"Package"])]
if(length(new.packages)) install.packages(new.packages)


# · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · ·
#   Link libraries
# · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · ·
library(shiny)
library(plot3D)
library(datasets)


# · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · ·
#   Variables
# · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · · ·


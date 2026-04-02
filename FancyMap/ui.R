#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#

library(shiny)
library(leaflet)


## https://rstudio.github.io/leaflet/articles/shiny.html


fluidPage(

    # Application title
    titlePanel("Nice places in Palma, updated 03/04/2026"),
    
    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            h4("Details"),
            textOutput("description")
        ),

        # Show a plot of the generated distribution
        mainPanel(
            leafletOutput("map")
        )
    )
)

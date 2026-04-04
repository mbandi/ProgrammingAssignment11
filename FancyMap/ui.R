# 
# Since we already know how to put information inside a map from the slides, 
# the idea of this map was to do some things that are not covered in them.
# One is to conditionally paint and remove things on the map, and the other 
# is to detect user interactions with the map.
# 
# Since most of this things are handled in the server, the UI is very simple, 
# with just a panel for the map and a text area to show some info about what
# the user clicked.
# 
# The documentation for this was taken from this sources:
# 
## https://rstudio.github.io/leaflet/articles/shiny.html
## https://rstudio.github.io/leaflet/articles/showhide.html
## https://github.com/RamiKrispin/shinylive-r
# 
# 
# If no one likes this map I'll do another one with more math... but with this 
# one you get to know some places to check out if you come to visit
# 


library(shiny)
library(leaflet)


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

##  Default Map ()
##
##  Integrating SLA Onemap into your application with R  
##                                                         
##  Thanks to SLA for developing such a wonderful map   
##                                                   
##                                    Jason Kok- 2018/05/25
##                                    jasonkok1981@gmail.com 

# Initiate the leaflet library 
library(leaflet)


# We will be using the leaflet function to set the minimum zoom to 11 and maximum zoom to 19. 
# Do note the zoom value might not be the same should you decide to call other basemaps instead of onemap
m <- leaflet(width="100%",options = leafletOptions(minZoom = 11, maxZoom = 19))%>%

# This command setMaxBounds sets the fixed boundaries to be displayed in the application.  
setMaxBounds(104.11475,1.56073,103.502,1.16) 


# This code uses the addtiles functions that pulls the tiles from the basemaps
# Change the basemap you want by changing the "Default" in the url into /Night/Grey/Original 

# m %>% addTiles("https://maps-{s}.onemap.sg/v3/Default/{z}/{x}/{y}.png") 
# m %>% addTiles("https://maps-{s}.onemap.sg/v3/Night/{z}/{x}/{y}.png") 
# m %>% addTiles("https://maps-{s}.onemap.sg/v3/Grey/{z}/{x}/{y}.png") 
# m %>% addTiles("https://maps-{s}.onemap.sg/v3/Original/{z}/{x}/{y}.png") 


m %>% addTiles("https://maps-{s}.onemap.sg/v3/Default/{z}/{x}/{y}.png") 

  


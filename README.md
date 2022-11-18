# heatmap_of_ny_bike_routes

This is a heatmap I made layering the top New York City bike-share routes. It is a representation of the presence of citi-bikes over the month of May 2014. See it deployed at https://citibike-heatmap.herokuapp.com.

Citibike provides a list of all bike trips, including start and stop station latitude and longitude.

With pandas, I grouped the trips by start and stop station and then counted the trips per route.

Then I made Google Directions API calls to get a polyline for each route. A polyline is a representation of the route. Then I decoded each polyline with the python polyline module, to get a list of latitude and longitude coordinates for each route. 

Then I built a Sinatra app calling the Google Heatmaps API. It takes the list of latitudes and longitudes and layers them over the map. 

The data processing and API calls are in the iPython notebook.

To see the heatmap, run ruby router.rb and open your browser to localhost:4567

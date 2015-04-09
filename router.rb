require 'sinatra'
require 'bundler'
require 'pry'
require 'json'
require 'csv'

Bundler.require


get '/' do

  @arr_of_arrs = CSV.read("coords_array.csv")
  erb :index
end

# ♥ git remote -v
# heroku	git@heroku.com:citibike-heatmap.git (fetch)
# heroku	git@heroku.com:citibike-heatmap.git (push)
# origin	https://github.com/aprilrabkin/heatmap_of_ny_bike_routes.git (fetch)
# origin	https://github.com/aprilrabkin/heatmap_of_ny_bike_routes.git (push)
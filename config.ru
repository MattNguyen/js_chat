$:.unshift File.expand_path("../", __FILE__)

require './application.rb'
run Sinatra::Application

map '/' do 
  run Application
end

$:.unshift File.expand_path("../", __FILE__)

require './chat.rb'
run Sinatra::Application

map '/' do 
  run Application
end

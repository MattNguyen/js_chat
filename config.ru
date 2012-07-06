web= bundle exec ruby web.rb -p $PORT

require './application.rb'
run Sinatra::Application

map '/' do 
  run Application
end

require 'rubygems'
require 'bundler'
Bundler.require
require 'sinatra'

get '/' do
  erb :home
end

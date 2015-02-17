require 'sinatra'
require 'sinatra/reloader'
also_reload './lib/**/*.rb'
require './lib/task.rb'


get '/' do
  @tasks = Task.all
  erb :index
end


post '/whatever' do
  description = params[:description]   #.fetch("description")
  task = Task.new(description)
  task.save
  redirect "/"
end

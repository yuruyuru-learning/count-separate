require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?
require './models/count.rb'

get "/" do 
	@numbers = Count.all.order(id: :desc)
	erb :index
end

post "/plus/:id" do
	count = Count.all.find_by(id: params[:id])
	count.number += 1
	count.save
	redirect "/"
end
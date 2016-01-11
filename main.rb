require 'sinatra'
require 'sinatra/reloader' if development?
require "sinatra/activerecord"



get '/' do
  erb :home
end

set :database, {adapter: "sqlite3", database: "foo.sqlite3"}

class Bus<ActiveRecord::Base
  p = Bus.create(name:"SeaBird", source:"Goa", dest:"Bangalore")
  Bus.create(name:"VRL", source:"Pune", dest:"Goa")
end

get '/buses' do
  buses = Bus.first
  @bus1name = buses.name
  @bus1src = buses.source
  @bus1dest = buses.dest
  bus2 = Bus.last
  @bus2name = bus2.name
  @bus2src = bus2.source
  @bus2dest = bus2.dest
  erb :buses
end

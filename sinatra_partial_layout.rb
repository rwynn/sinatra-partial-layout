require 'rubygems'
require 'sinatra/base'
require 'sinatra/content_for'
require 'haml'

class Server < Sinatra::Base
  helpers Sinatra::ContentFor
  set :app_file, __FILE__
  get('/') do 
    @message = "Be unique"
    haml :index
  end
  get('/layout2') do
    @message = "Stay unique"
    haml :index, :layout => :layout2
  end
  run! if app_file == $0
end
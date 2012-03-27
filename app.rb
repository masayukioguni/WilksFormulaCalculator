# dev hint: shotgun login.rb

require 'rubygems'
require 'sinatra'
require 'erb'

# reloader
set :enviroment, :development
require 'sinatra/base'
require 'sinatra/reloader' if development?

helpers do
  def partial(page, options={})
    erb page, options.merge!(:layout => false)
  end
end

configure do
  set :public_folder, Proc.new { File.join(root, "static") }
  enable :sessions
end

get '/' do
  "Wilks Formula Calculator"
end


get '/formula' do
 @title = 'Wilks Formula Calculator'
 @project_name =  @title
 erb :index, :layout => false
end

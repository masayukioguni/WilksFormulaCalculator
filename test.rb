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
 @title = 'Wilks Formula Calculator'
 @project_name =  @title
 erb :index, :layout => false
end

get '/hello/:name' do
  params.to_s
  @name = params[:name]
  erb :hello, :layout => false
end

get '/api/formula/:a/:b' do
  # matches /say/hello/to/world
  #params[:splat]
  params.to_s
  #{}"Hellxxxxxo #{params["a"]} #{params["b"]}!"
end



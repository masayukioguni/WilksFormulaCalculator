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
 erb :formula_form, :layout => false
end

get '/plformula' do
 @title = 'Powerlifting Calculator'
 @project_name =  @title
 erb :plform, :layout => false
end

get '/calctotal' do
 @title = 'Total Calculator'
 @project_name =  @title
 erb :total_form, :layout => false
end
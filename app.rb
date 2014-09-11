# encoding: utf-8
require 'sinatra/base'
require "sinatra/reloader"
require 'haml'

class LinkShare < Sinatra::Base
  register Sinatra::Reloader
  #set :views, File.expand_path('views', __FILE__)
  enable :sessions, :method_override
end

# encoding: utf-8
require 'sinatra/base'
require 'sinatra/reloader'
require 'sequel'
require 'haml'

class LinkShare < Sinatra::Base
  register Sinatra::Reloader
  enable :sessions, :method_override
end

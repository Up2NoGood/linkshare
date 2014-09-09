# encoding: utf-8
require 'rubygems'
require 'bundler'

Bundler.require

require 'sinatra/base'

require_relative 'app'
require_relative 'controllers/init'
require_relative 'models/init'

map('/') { run HomeController }
map('/account') { run UserController }
map('/links') {run LinkController }

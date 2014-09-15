# encoding: utf-8
require 'sinatra'
require 'sequel'

class User < Sequel::Model
  one_to_many :link, :key => :userid
end
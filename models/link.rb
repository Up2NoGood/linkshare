# encoding: utf-8
require 'sinatra'
require 'sequel'

class Link < Sequel::Model
  many_to_one :user, :key => :userid
end
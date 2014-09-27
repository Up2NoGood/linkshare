# encoding: utf-8

require_relative '../models/init'

class LinkController < LinkShare
  get '/' do
    @links = Link.all
    erb :links
  end
end
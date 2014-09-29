# encoding: utf-8

require_relative '../models/init'

class LinkController < LinkShare

  # Create a dataset
  links = DB[:links]

  get '/' do
    @links = Link.all
    erb :links
  end

  get '/form' do
    erb :form
  end

  post '/add' do
    @fullurl = params[:fullurl]
    @shorturl = params[:shorturl]
    @title = params[:title]
    @description = params[:description]
    @originalposter = params[:originalposter]
    @userid = params[:userid]

    links.insert(:fullurl => @fullurl, :shorturl => @shorturl, :title => @title, :description => @description, :originalposter => @originalposter, :creation_date => Date.today, :userid => @userid )
  end
end
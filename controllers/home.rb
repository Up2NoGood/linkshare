# encoding: utf-8
class HomeController < LinkShare
  get '/' do
    erb :linkshare
  end

  get '/public' do
    erb :public
  end

  get '/personal' do
    erb :personal
  end

  get '/shared' do
    erb :shared
  end

  get '/friends' do
    erb :friends
  end
end

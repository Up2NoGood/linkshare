# encoding: utf-8
class HomeController < LinkShare

  users = DB[:users] # Create a dataset

  get '/' do
    erb :index
  end

  get '/login' do
    erb :login
  end

  post '/login' do
    #if params['username']==settings.username&&params['password']==settings.password
    if users.where('username == params[\'username\']') && users.where('password == params[\'password\']')
      response.set_cookie(settings.username,settings.token)
      redirect '/home'
    else
      "Username or Password incorrect"
    end
  end

  get('/logout'){ response.set_cookie(settings.username, false) ; redirect '/' }

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

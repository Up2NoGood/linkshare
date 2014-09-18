# encoding: utf-8
class HomeController < LinkShare

  #fetch from database
  set :username,'abc'
  set :token,'reallongpasswordtotrytocrack'
  set :password,'123'
  users = DB[:users] # Create a dataset

  get '/' do

    #users.insert(:username => 'abc', :firstname => 'a', :lastname => 'bc', :email => 'minion1@a.com', :password => '123', :creation_date => Time.now)
    #users.insert(:username => 'qwe', :firstname => 'q', :lastname => 'we', :email => 'minion2@a.com', :password => '123', :creation_date => Time.now)
    #users.insert(:username => 'asd', :firstname => 'a', :lastname => 'sd', :email => 'minion3@a.com', :password => '123', :creation_date => Time.now)
    #users.insert(:username => 'zxc', :firstname => 'z', :lastname => 'xc', :email => 'minion4@a.com', :password => '123', :creation_date => Time.now)

    DB['select * from users'].each do |row|
      p row
    end

    #deleted the extra
    #users.where('id > 7').delete

    puts "Users count: #{users.count}"

    erb :login
  end

  #fetch from database (settings.username, settings.password)
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

  get '/home' do
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

# encoding: utf-8

require_relative '../models/init'

class UserController < LinkShare
  get '/account' do
    'Account!'
  end
end
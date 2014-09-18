# encoding: utf-8
require "rubygems"
require "sequel"

DB = Sequel.sqlite("./linkshare.db")

DB.create_table :users do
  primary_key :id, :auto_increment => true
  String :username
  String :firstname
  String :lastname
  String :email
  String :password
  Datetime :creation_date
end

DB.create_table :links do
  primary_key :id, :auto_increment => true
  String      :fullurl
  String      :shorturl
  String      :title
  String      :description
  String      :originalposter
  Datetime    :creation_date
  Int         :userid
end


require 'sinatra'
require 'sinatra/activerecord'
require 'bundler/setup'
require 'sinatra/base'
require 'rack-flash'
require_relative './models'

enable :sessions
use Rack::Flash, :sweep => true
set :sessions, true

set :database, "sqlite3:velopost.sqlite3"

get '/' do
	erb :index
end

get '/feed' do
	erb :feed
end

get '/loginpage' do
	erb :login
end


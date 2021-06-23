require 'sinatra/base'
require 'sinatra/reloader'
require './lib/message'

class MessageBoard < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/test' do
    'test page'
  end

  get '/' do
    erb :index
  end

  get '/messages' do
    @messages = Message.all
    erb :messages
  end

  get '/add-message' do
    erb :add_message
  end

  post '/add-message' do
    today = Time.now
    date = today.strftime("%Y%m%d")
    Message.create(params['name'], params['message'], date)
    redirect '/messages'
  end 

  run! if app_file == $0
end

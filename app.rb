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

  run! if app_file == $0
end

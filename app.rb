require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "487329585352"
  end

  get '/' do
    erb :index
  end

  get '/checkout' do
    session[:item] = params[:item]
    @session = session

  end
end

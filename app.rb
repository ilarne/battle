require 'sinatra'

class Battle < Sinatra::Base
  enable :sessions

  get "/" do
    erb(:index)
  end

  post "/names" do
    session[:Player1] = params[:Player1]
    session[:Player2] = params[:Player2]
    redirect '/play'
  end

  get '/play' do
    @player_1 = session[:Player1]
    @player_2 = session[:Player2]
    erb(:start_battle)
  end
end

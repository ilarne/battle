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
    p session[:Player1]
    p session[:Player2]
    @player_1 = session[:Player1]
    @player_2 = session[:Player2]
    @player_2_health = 30
    erb(:start_battle)
  end

  get '/wrecked' do
    @player_2 = session[:Player2]
    erb(:wrecked)
  end
end

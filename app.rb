require 'sinatra'
require 'player'

class Battle < Sinatra::Base
   enable :sessions

  get "/" do
    erb(:index)
  end

  post "/names" do
    $player1 = Player.new(params[:Player1])
    $player2 = Player.new(params[:Player2])
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player1
    @player_2 = $player2
    @player_2_health = 30
    erb(:start_battle)
  end

  get '/wrecked' do
    erb(:wrecked)
  end
end

require 'sinatra'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
   enable :sessions

  get "/" do
    erb(:index)
  end

  post "/names" do
    $player1 = Player.new(params[:Player1])
    $player2 = Player.new(params[:Player2])
    $game = Game.new
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player1
    @player_2 = $player2
    erb(:start_battle)
  end

  get '/wrecked' do
    @player_2 = $player2
    $game.attack(@player_2)
    erb(:wrecked)
  end
end

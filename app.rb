require 'sinatra'
require_relative './lib/player'
require './lib/game'

class Battle < Sinatra::Base
   enable :sessions

  get "/" do
    erb(:index)
  end

  post "/names" do
    $game = Game.new(Player.new(params[:Player1]), Player.new(params[:Player2]))
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:start_battle)
  end

  get '/wrecked' do
    @game = $game
    @game.attack(@game.player2) # why does this always pass even with just '@game'???
    erb(:wrecked)
  end
end

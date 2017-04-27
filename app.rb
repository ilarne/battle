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
    erb(:play)
  end

  get '/wrecked' do
    @game = $game
    @game.attack(@game.next_turn)
    @game.switch_turns
    erb(:wrecked)
  end
end

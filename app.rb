require 'sinatra'
require_relative './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  before do
    @game = Game.current_game
  end

  get "/" do
    erb(:index)
  end

  post "/names" do
    @game = Game.start(Player.new(params[:Player1]), Player.new(params[:Player2]))
    redirect '/play'
  end

  get '/play' do
  #   @game = Game.current_game
    erb(:play)
  end

  get '/wrecked' do
    #  @game = Game.current_game
    @game.attack(@game.next_turn)
    @game.switch_turns
    erb(:wrecked)
  end

  get '/healed' do
    @game.heal(@game.current_turn)
    @game.switch_turns
    erb(:healed)
  end
end

require 'sinatra'
require_relative './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions
  set(:probability) { |value| condition { rand <= value } }

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
    erb(:play)
  end

  get '/wrecked' do
    @game.attack(@game.next_turn)
    @game.switch_turns
    erb(:wrecked)
  end

  get '/healed' do
    @game.heal(@game.current_turn)
    @game.switch_turns
    erb(:healed)
  end

  get '/sleep', :probability => 0.5 do
  @game.attack(@game.next_turn)
   erb(:sleep)
 end

 get '/sleep' do
   erb(:failed_attack)
 end

 get '/play_2' do
   @game.switch_turns
   erb(:play_2)
 end
end

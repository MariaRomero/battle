require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    @game = Game.create(Player.new(params[:player_1_name]), Player.new(params[:player_2_name]))
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get '/attack' do
    @game.attack
    return erb :attack unless @game.game_over?
    redirect '/game_over'
  end

  get '/game_over' do
    erb :game_over
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

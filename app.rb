require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.other_player)
    if @game.other_player.hp == 0
      redirect '/loser'
    else
      erb :attack
    end
  end

  post '/switch_turns' do
    $game.switch_turn
    redirect('/play')
  end

  get '/loser' do
    @game = $game
    erb :loser
  end

  run! if app_file == $0
end

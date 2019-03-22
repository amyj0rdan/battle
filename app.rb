require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base

  enable :sessions

  before do
    @game = Game.get
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    Game.create_game(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get '/attack' do
    @game.attack(@game.other_player)
    if @game.other_player.hp <= 0
      redirect '/loser'
    else
      erb :attack
    end
  end

  post '/switch_turns' do
    @game.switch_turn
    redirect('/play')
  end

  get '/loser' do
    erb :loser
  end

  run! if app_file == $0
end

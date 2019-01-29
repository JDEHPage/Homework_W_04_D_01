require('sinatra')
require('sinatra/contrib/all')
require('pry')

require_relative('./models/rps_game')
also_reload('./models/*')


get '/' do
  erb (:home)
end

get '/rock' do
  erb (:rock)
end

get '/paper' do
  erb (:paper)
end

get '/scissors' do
  erb (:scissors)
end



get '/RPSgame/:player1/:player2' do
  game = RPSgame.new(params[:player1].capitalize, params[:player2].capitalize)
  @game_outcome = game.sign_comparison()
  erb(:result)
end

get '/:player1/random' do
  @player1 = params[:player1].capitalize
  @player2 = RPSgame.random_choice.capitalize

  @game_outcome = RPSgame.new(@player1, @player2).sign_comparison
  erb(:result)
end

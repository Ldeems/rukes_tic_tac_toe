require 'sinatra'
require_relative 'the_game.rb'
require_relative 'board.rb'
require_relative 'player_class.rb'
enable :sessions 


get '/' do
    erb :welcome
end    

post '/really' do
    redirect '/thanks'
end

get '/thanks' do
    erb :thanks
end    

post '/welcome' do
   redirect '/getstarted'
end

get '/getstarted' do
    erb :getstarted
end 

post '/twoplayergame' do
    p1name = params[:p1name]
    p2name = params[:p2name]
    redirect '/2pgame?p1name=' + p1name & 'p2name=' + p2name
end

get '/2pgame' do
    p1name = params[:p1name]
    p2name = params[:p2name]
    erb :2pgame, locals:{p1name:p1name, p2name:p2name}
end    

require 'sinatra'
require_relative 'thegamefuncs.rb'
require_relative 'board.rb'
require_relative 'player_class.rb'
enable :sessions 


get '/' do
    session[:board] = Board.new
    session[:player] = Player.new
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
    session[:p1name] = params[:p1name]
    session[:p2name] = params[:p2name]
    outcome = "next"
    pick = ""
    uplayer = "x"
    ub = ""
    redirect '/2pgame?outcome=' + outcome + '&pick=' + pick + '&uplayer=' + uplayer + '&ub=' + ub
end

get '/2pgame' do
    outcome = params[:outcome]
    pick = params[:pick]
    uplayer = params[:uplayer]
    if pick != ""
        session[:board].updateboard(session[:player].player,pick)
        outcome = apptpg(session[:board].gboard,session[:player].player,pick)
        session[:player].playerchange
        erb :twopgame, locals:{outcome:outcome}
    else
        erb :twopgame, locals:{outcome:outcome}
    end    
end 

post '/update' do
    pick = params[:pick]
    uplayer = params[:uplayer]
    
    redirect '/2pgame?pick=' + pick + '&uplayer=' + uplayer 
end


post '/oneplayergame' do
    session[:pname] = params[:pname]
    session[:diff] = params[:diff]
    #"#{session[:pname]}......#{session[:diff]}"
    redirect '/pvsa'
end

get '/pvsa' do
    erb :pvsa, local:{}
end    

post '/playervsai' do
    pick = params[:pick]
    "#{pick}"
end

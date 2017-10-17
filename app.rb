require 'sinatra'
require_relative 'thegamefuncs.rb'
require_relative 'board.rb'
require_relative 'player_class.rb'
require_relative 'splayer.rb'
require_relative 'rplayer.rb'
require_relative 'aiplayer.rb'
require_relative 'unplayer.rb'
require_relative 'tablemethods.rb'
enable :sessions 


get '/' do
    session[:board] = Board.new
    session[:player] = Player.new
    session[:two] = Splayer.new
    session[:one] = Rplayer.new
    session[:three] = Trymeplayer.new
    session[:outcome] = "next"
    session[:zero] = "nope"
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
    order = params[:order]
    pick = ""
    #"#{session[:pname]}......#{session[:diff]}"
    if order == "first"
        redirect '/pvsa?pick=' + pick
    elsif order == "second"
        redirect '/second?pick=' + pick 
    end       
end

get '/pvsa' do
    pick = params[:pick]
    if pick != ""
        
         session[:board].updateboard(session[:player].player,pick)
         session[:outcome] = gameon(session[:board].gboard,session[:player].player,pick,session[:diff],session[:zero])
         session[:player].playerchange
            if session[:outcome] == "next"
                if session[:diff] == "easy"
                    session[:outcome] = gameon(session[:board].gboard,session[:player].player,pick,session[:diff],session[:one])
                    session[:player].playerchange
                    # "#{session player} made it here"
                    erb :pvsa, local:{}
                elsif session[:diff] == "medium"
                    session[:outcome] = gameon(session[:board].gboard,session[:player].player,pick,session[:diff],session[:two])
                    session[:player].playerchange
                    erb :pvsa, local:{}
                elsif session[:diff] == "hard"
                    session[:outcome] = gameon(session[:board].gboard,session[:player].player,pick,session[:diff],session[:three])
                    session[:player].playerchange
                    erb :pvsa, local:{}
                else
                    "broken"
                end
            else 
                erb :pvsa, local:{}
            end               
    else    
    erb :pvsa, local:{}
    end
end    

post '/playervsai' do
    pick = params[:pick]
    # "#{pick}"
    redirect '/pvsa?pick=' + pick
end

get '/second' do
    pick = params[:pick]
    
    if session[:outcome] == "next"
         if session[:diff] == "easy"
            
             session[:outcome] = gameonsecond(session[:board].gboard,session[:player].player,pick,session[:diff],session[:one])
            session[:player].playerchange
            erb :second, local:{}
        elsif session[:diff] == "medium"
            session[:outcome] = gameonsecond(session[:board].gboard,session[:player].player,pick,session[:diff],session[:two])
            session[:player].playerchange
            erb :second, local:{}
        elsif session[:diff] == "hard"
            session[:outcome] = gameonsecond(session[:board].gboard,session[:player].player,pick,session[:diff],session[:three])
            session[:player].playerchange
            erb :second, local:{}
        else
            "broken"
        end
    else 
        erb :second, local:{}
    end    
end 

post '/sres' do
    pick = params[:pick]
    session[:board].updateboard(session[:player].player,pick)
    session[:outcome] = gameonsecond(session[:board].gboard,session[:player].player,pick,session[:diff],session[:zero])
    session[:player].playerchange
    redirect '/second?pick=' + pick
end  

get '/playagian' do
    redirect '/'
end 



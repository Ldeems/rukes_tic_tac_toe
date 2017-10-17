require 'pg'


load './local_env.rb' if File.exist?('./local_env.rb')


def add_to_table(game,results,info)
    db_params = {
        host: ENV['host'],
        port: ENV['port'],
        dbname: ENV['dbname'],
        user: ENV['user'],
        password: ENV['password']
    }

    db= PG::Connection.new(db_params)

    db.exec("insert into pvptttgamess(game,outcome,datetime)VALUES('#{game}','#{results}','#{info}')")
end   

def table()
    db_params = {
		host: ENV['host'],
		port: ENV['port'],
		dbname: ENV['dbname'],
		user: ENV['user'],
		password: ENV['password']
	}

	db = PG::Connection.new(db_params)

	data = [] 

	db.exec( "SELECT * FROM pvptttgamess" ) do |result|
	      result.each do |row|
	          data << row.values
	        end
	        # p "#{data} data is here"
	    end
	data    
end
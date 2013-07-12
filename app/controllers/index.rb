get '/' do
	# @games = Game.all
	if session[:auth] != nil
		@logged_in = true
	end
	@user = User.find(session[:auth])
	@game = 

	erb :index
end

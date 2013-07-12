get '/' do
	@games = Game.all
	if session[:auth] != nil
		@logged_in = true
		@user = User.find(session[:auth])
	end
	

	erb :index
end

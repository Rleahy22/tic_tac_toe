class User < ActiveRecord::Base
	include BCrypt

	validates :name, :uniqueness => true 
	validates :name, :presence => true

	has_many :created_games, :class_name => "Game"
	has_many :wins
	has_many :won_games, :through => :wins, :source => :game
	has_many :moves
	has_many :played_games, :through => :moves, :source => :game


	def password
		@password ||= Password.new(password_hash)
	end

	def password=(new_password)
		@password = Password.create(new_password)
		self.password_hash = @password
	end

	def self.create(params)
		@user = User.new(params)
		@user.password = params[:password]
		@user.save!
		@user
	end

	def self.verify(params)
		@user = User.find_by_name(params[:name])
		@user.password == params[:password] ? @user : nil
	end
end

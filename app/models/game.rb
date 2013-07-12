class Game < ActiveRecord::Base
  belongs_to :user
  has_many :wins
  has_many :winners, :through => :wins, :source => :user
  has_many :moves
  has_many :players, :through => :moves, :source => :user
end

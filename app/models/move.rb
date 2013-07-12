class Move < ActiveRecord::Base
  validates_uniqueness_of :game_id, :scope => :square

  belongs_to :user
  belongs_to :game
end

class CreateWins < ActiveRecord::Migration
  def change
    create_table :wins do |t|
      t.belongs_to :user
      t.belongs_to :game
      t.timestamps
    end
  end
end

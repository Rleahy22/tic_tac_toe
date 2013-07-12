class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.belongs_to :user
      t.boolean :complete, default: false
      t.string :board, default: "---------"
      
      t.timestamps
    end
  end
end

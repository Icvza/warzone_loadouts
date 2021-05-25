class CreateTactics < ActiveRecord::Migration[6.1]
  def change
    create_table :tactics do |t|
      t.integer :user_id
      t.integer :gamemode_id
      t.string :strategy
      t.string :creator
    end
  end
end

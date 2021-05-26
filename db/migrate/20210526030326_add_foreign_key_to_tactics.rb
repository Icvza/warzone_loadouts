class AddForeignKeyToTactics < ActiveRecord::Migration[6.1]
  def change
    add_column :tactics, :loadout_id, :integer
  end
end

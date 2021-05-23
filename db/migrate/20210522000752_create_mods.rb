class CreateMods < ActiveRecord::Migration[6.1]
  def change
    create_table :mods do |t|
      t.string :content
      t.belongs_to :user
      t.belongs_to :loadout
    end
  end
end

class CreateLoadouts < ActiveRecord::Migration[6.1]
  def change
    create_table :loadouts do |t|
      t.string :creator
      t.string :loadout_name
      t.string :weapon
      t.string :optic
      t.string :muzzle
      t.string :barrel
      t.string :underbarrel
      t.string :ammunition
      t.string :stock
      t.string :girp
      t.string :gun_perk
      t.string :perk_1
      t.string :perk_2
      t.string :perk_3
      t.string :lethal
      t.string :tactical
      t.string :remarks
    end
  end
end

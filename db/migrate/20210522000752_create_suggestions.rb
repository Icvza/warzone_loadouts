class CreateSuggestions < ActiveRecord::Migration[6.1]
  def change
    create_table :suggestions do |t|
      t.string :content
      t.belongs_to :user
      t.belongs_to :loadout
    end
  end
end

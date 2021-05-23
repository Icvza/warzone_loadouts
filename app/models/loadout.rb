class Loadout < ApplicationRecord
     has_many :mods
     has_many :users, through: :mods


     validates :weapon, presence: true
     validates :loadout_name, presence: true
end

class Loadout < ApplicationRecord
     has_many :tactics
     belongs_to :user

     validates :weapon, presence: true
     validates :loadout_name, presence: true
end

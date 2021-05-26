class Loadout < ApplicationRecord
     has_many :tactics
     belongs_to :user

     validates :weapon, presence: true
     validates :loadout_name, presence: true

     def self.alphab
          self.order(loadout_name: :desc)
     end

end

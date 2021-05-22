class Loadout < ApplicationRecord
     has_many :suggestions
     has_many :users, through: :suggestions


     validates :weapon, presence: true
     validates :loadout_name, presence: true, :uniqueness => { :case_sensitive => false }
    
end

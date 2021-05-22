class Loadout < ApplicationRecord
     has_many :users
    #has_many :suggestions, through: :users

     validates :weapon, presence: true
     validates :loadout_name, presence: true, :uniqueness => { :case_sensitive => false }
end

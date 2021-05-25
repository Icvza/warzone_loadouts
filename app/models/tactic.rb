class Tactic < ApplicationRecord
    belongs_to :user
    belongs_to :gamemode
    
    validates :strategy, presence: true
end

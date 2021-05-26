class Tactic < ApplicationRecord
    belongs_to :user
    belongs_to :gamemode
    belongs_to :loadout, optional: true
    
    validates :strategy, presence: true


    def self.search(strategy)
        self.where('strategy LIKE ?', "%#{strategy}%")
    end


    
end

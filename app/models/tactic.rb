class Tactic < ApplicationRecord
    belongs_to :user
    belongs_to :game_mode
end

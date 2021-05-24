class GameMode < ApplicationRecord
    has_many :tactics
    has_many :users, through: :tactics
end

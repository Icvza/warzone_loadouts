class Gamemode < ApplicationRecord
    has_many :tactics
    has_many :users, through: :tactics

    validates :mode_name, presence: true
end

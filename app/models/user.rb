class User < ApplicationRecord
    has_many :tactics
    has_many :gamemodes, through: :tactics
    has_many :loadouts
    
    has_secure_password

    validates :email, presence: true, :uniqueness => { :case_sensitive => false }
    validates :password, length: { minimum: 6 }, if: :password_digest_changed?
    validates :name, presence: true
    validates :username, presence: true

    def self.mode_tactics(user)
        self.joins(tactics: :gamemode).where(user_id.to_i = user.id).
    end
end
end

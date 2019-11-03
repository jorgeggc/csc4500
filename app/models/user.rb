class User < ApplicationRecord
    has_secure_password
    has_many :recipes, through: :favorites

    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, length: { minimum: 8 }
end

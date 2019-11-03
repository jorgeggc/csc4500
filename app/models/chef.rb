class Chef < ApplicationRecord
    has_secure_password
    belongs_to :restaurant
    validates :restaurant, presence: true
    has_many :recipes, dependent: :destroy

    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, length: { minimum: 8 }
end

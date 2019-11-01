class Chef < ApplicationRecord
    belongs_to :restaurant
    has_many :recipes, dependent: :destroy
end

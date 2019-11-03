class Recipe < ApplicationRecord
    belongs_to :chef
    has_many :users, through: :favorites
end

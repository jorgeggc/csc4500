class Recipe < ApplicationRecord
    belongs_to :chef
    has_many :favorites, dependent: :destroy
    has_many :users, through: :favorites
    validates_presence_of :name, :description, :ingredients, :instructions
end

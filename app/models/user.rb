class User < ApplicationRecord
    has_many :recipes, through: :favorites
end

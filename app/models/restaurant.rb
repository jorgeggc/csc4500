class Restaurant < ApplicationRecord
    belongs_to :state_country, optional: true
    has_many :chefs
end

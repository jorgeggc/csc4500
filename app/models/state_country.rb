class StateCountry < ApplicationRecord
    self.primary_key = "state"
    has_many :restaurants
end

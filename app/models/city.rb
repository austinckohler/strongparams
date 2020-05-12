class City < ApplicationRecord
    validates :name, :state, presence: true
    # validates :population, length: { minimum: 500 }
end

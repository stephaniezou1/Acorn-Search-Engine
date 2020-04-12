class Rating < ApplicationRecord
    belongs_to :parent
    belongs_to :activity

    validates :num_rating, numericality: { 
        less_than_or_equal_to: 10,
        greater_than_or_equal_to: 0
      }

      validates :description, length: { 
        maximum: 200, 
        minimum: 5
        too_long: "%{count} characters is the maximum allowed", 
        too_short: "%{count} characters is the minimum required"}

end

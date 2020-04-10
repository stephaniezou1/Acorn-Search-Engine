class Organization < ApplicationRecord
    has_many :activities
    belongs_to :zipcode
end

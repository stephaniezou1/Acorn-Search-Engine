class Parent < ApplicationRecord
    has_many :ratings
    has_many :activities, through: :ratings
    belongs_to :zipcode
end

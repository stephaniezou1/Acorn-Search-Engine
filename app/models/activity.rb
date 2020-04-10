class Activity < ApplicationRecord
    has_many :ratings, :endorsements
    has_many :parents, through: :ratings
    has_many :teachers, through: :endorsements
    belongs_to :organization
    belongs_to :zipcode
end

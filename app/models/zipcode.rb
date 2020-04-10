class Zipcode < ApplicationRecord
    has_many :parents, :teachers, :organizations, :activities
end

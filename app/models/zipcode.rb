class Zipcode < ApplicationRecord
    has_many :parents 
    has_many :teachers
    has_many :organizations 
    has_many :activities
end

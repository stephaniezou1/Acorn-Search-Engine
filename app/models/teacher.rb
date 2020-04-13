class Teacher < ApplicationRecord
    has_many :endorsements
    has_many :activities, through: :endorsements
    belongs_to :zipcode

    has_secure_password
    
end

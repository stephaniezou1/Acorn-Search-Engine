class Parent < ApplicationRecord
    has_many :ratings
    has_many :activities, through: :ratings
    belongs_to :zipcode

    validates :email, uniqueness: true
    # validates :email, is_email_format: true
    validates :username, numericality: { 
        greater_than_or_equal_to: 3, 
        less_than_or_equal_to: 20
    }
    
end

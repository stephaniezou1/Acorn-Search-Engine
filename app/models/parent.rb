class Parent < ApplicationRecord
    has_many :ratings
    has_many :activities, through: :ratings
    belongs_to :zipcode

    has_secure_password

    validates :email, uniqueness: true
    # validates :email, is_email_format: true
    validates :username, presence: true
    
end

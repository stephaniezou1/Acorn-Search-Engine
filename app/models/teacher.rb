class Teacher < ApplicationRecord
    has_many :endorsements
    has_many :activities, through: :endorsements
    belongs_to :zipcode

    has_secure_password
    
    validates :email, presence: true, uniqueness: { message: "Someone has already used this email address." }, format: { with: URI::MailTo::EMAIL_REGEXP, message: "There's something funky with your email address!" },  length: {maximum: 75}
    
end

class Endorsement < ApplicationRecord
    belongs_to :teacher
    belongs_to :activity
end

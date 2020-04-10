class Rating < ApplicationRecord
    belongs_to :parent
    belongs_to :activity
end

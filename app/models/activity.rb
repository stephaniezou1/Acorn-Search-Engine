class Activity < ApplicationRecord
    has_many :ratings
    has_many :endorsements
    has_many :parents, through: :ratings
    has_many :teachers, through: :endorsements
    belongs_to :organization
    belongs_to :zipcode

    def average_rating
        total = self.ratings.sum do |rating|
            rating.num_rating
        end
        if self.ratings.length == 0
            return 0
        else
            average = (total / self.ratings.length).to_f
        end
    end

    def self.search_by_activity(search)
        if search
            activity_keyword = Activity.find_by(name: search)
            if activity_keyword
                self.where(activity_id: activity_keyword)
            else
                @activities = Activity.all
            end
            @activities = Activity.all
        end
    end

end

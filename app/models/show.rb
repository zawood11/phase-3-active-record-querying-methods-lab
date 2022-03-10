class Show < ActiveRecord::Base
    def self.highest_rating
        Show.maximum(:rating)
    end

    def self.most_popular_show
        most_popular_show = Show.where(rating: Show.maximum(:rating))
        most_popular_show[0]
    end

    def self.lowest_rating
        Show.minimum(:rating)
    end

    def self.least_popular_show
        least_popular_show = Show.where(rating: Show.minimum(:rating))
        least_popular_show[0]
    end

    def self.ratings_sum
        Show.sum(:rating)
    end

    def self.popular_shows
        Show.where('rating > 5')
    end

    def self.shows_by_alphabetical_order
        Show.order(name: :asc)
    end
end
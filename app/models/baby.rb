class Baby < ApplicationRecord
    has_many :breastfeedings, dependent: :destroy
    def feed_count
        breastfeedings.count
    end

    def feed_volume
        breastfeedings.sum(:volume)
    end

    def feed_time
        breastfeedings.sum(:feeding_time)
    end

    def feeding_times_today
        breastfeedings.where('created_at > ?',Date.today).count
    end

end

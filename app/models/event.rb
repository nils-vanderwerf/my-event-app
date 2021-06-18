class Event < ApplicationRecord
    belongs_to :host, class_name: "User"
    has_many :rsvps
    has_many :users, through: :rsvps

    validates :name, presence: :true
    validates :location, presence: true
    validate :existance_of_date_time,
                :correct_date_format,
                :start_date_must_be_in_future,
                :end_must_be_after_start
    

    def existance_of_date_time
        return if end_date && end_time && start_time && start_date

        errors.add(:dates, "are invalid.")
    end

    def correct_date_format
        valid_date_format
        valid_time_format
      end

    def valid_date_format
        return if start_date.is_a?(Date) && end_date.is_a?(Date)

        errors.add(:dates, "are invalid. ")
    end

    def valid_time_format
        return if start_time.is_a?(Time) && end_time.is_a?(Time)

        errors.add(:times, "are invalid.")
    end

    def start_date_must_be_in_future
        return unless errors.messages.empty?
        start_date > Time.zone.today
    end

    def end_must_be_after_start
        return unless errors.messages.empty?   
        if start_date == end_date && start_time > end_time
            errors.add(:end_time, 'must be after start time.')
        elsif start_date > end_date
            errors.add(:end_date, 'must be the same or after start date.')
      end
    end

end

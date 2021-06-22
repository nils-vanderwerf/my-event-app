class Rsvp < ApplicationRecord
    belongs_to :guest, class_name: 'User', dependent: :destroy
    belongs_to :attended_event, class_name: "Event", dependent: :destroy

    def event
        self.attended_event
    end
end

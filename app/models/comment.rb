class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :commented_event, class_name: "Event"

end

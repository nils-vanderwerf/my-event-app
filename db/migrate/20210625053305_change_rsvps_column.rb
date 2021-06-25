class ChangeRsvpsColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :rsvps, :event_id, :attended_event_id
  end
end

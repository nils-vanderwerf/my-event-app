class RenameCommentedEventsColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :comments, :commented_events_id, :commented_event_id
  end
end

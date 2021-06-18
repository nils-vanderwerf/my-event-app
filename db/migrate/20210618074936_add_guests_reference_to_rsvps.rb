class AddReferenceToHost < ActiveRecord::Migration[6.1]
  def change
    add_reference :rsvps, :hosts, foreign_key: {to_table: :users}
    t.references :attended_event, null: false, foreign_key: { to_table: :events }, index: true
  end
end

class CreateRsvps < ActiveRecord::Migration[6.1]
  def change
    create_table :rsvps do |t|
      t.belongs_to :guest, null: false, foreign_key: { to_table: :users }, index: true
      t.belongs_to :attended_event, null: false, foreign_key: { to_table: :events }, index: true


      t.timestamps
    end
  end
end

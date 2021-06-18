class CreateRsvps < ActiveRecord::Migration[6.1]
  def change
    create_table :rsvps do |t|
      t.references :guest, null: false, foreign_key: { to_table: :users }, index: true
      t.references :event, null: false, index: true

      t.timestamps
    end
  end
end

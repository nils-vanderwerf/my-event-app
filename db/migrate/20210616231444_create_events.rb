class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :name
      t.date     :start_date
      t.date     :end_date
      t.datetime :start_time
      t.datetime :end_time
      t.string :location
      t.text :description
      t.belongs_to :host, foreign_key: { to_table: :users }, index: true, null: false
      t.timestamps
    end
  end
end

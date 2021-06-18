class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :start_time
      t.datetime :end_time
      t.string :location
      t.text :description
      t.references :host, foreign_key: { to_table: :users }, index: true, null: false
      t.timestamps
    end
  end
end

class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.text :content
      t.belongs_to :commented_event, foreign_key: { to_table: :events }, index: true, null: false
      t.belongs_to :user

      t.timestamps
    end
  end
end
class AddReferenceToHost < ActiveRecord::Migration[6.1]
  def change
    add_reference :events, :hosts, foreign_key: {to_table: :users}
  end
end

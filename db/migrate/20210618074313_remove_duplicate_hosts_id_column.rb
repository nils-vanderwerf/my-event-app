class RemoveDuplicateHostsIdColumn < ActiveRecord::Migration[6.1]
  def change
    remove_column :events, :hosts_id
  end
end

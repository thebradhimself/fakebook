class AddColumnsToStatus < ActiveRecord::Migration
  def change
    add_column :statuses, :status_update, :text
    add_column :statuses, :user_id, :integer
  end
end

class AddThisToUser < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :name, :string
    add_column :users, :gender, :string
    add_column :users, :birthday, :date
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :country, :string
  end

  def self.up
    change_table :users do |t|
      t.attachment :profile_pic
    end
  end

  def self.down
    remove_attachment :users, :profile_pic
  end
end

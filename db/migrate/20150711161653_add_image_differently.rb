class AddImageDifferently < ActiveRecord::Migration
  def change
    add_column :users, :image_location, :string
  end
end

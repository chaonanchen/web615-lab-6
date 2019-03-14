class AddUserId < ActiveRecord::Migration[5.1]
  #Creating a migration to add an integer column to each model called user_id
  def change
    add_column :comments, :user_id, :integer
    add_column :articles, :user_id, :integer
  end
end

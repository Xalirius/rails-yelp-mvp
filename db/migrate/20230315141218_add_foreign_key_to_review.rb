class AddForeignKeyToReview < ActiveRecord::Migration[7.0]
  def change
    add_column :reviews, :restaurant_id, :integer, foreign_key: true
  end
end

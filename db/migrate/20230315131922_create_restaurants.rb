class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :addresse
      t.string :category
      t.string :phone_number

      t.timestamps
    end
  end
end

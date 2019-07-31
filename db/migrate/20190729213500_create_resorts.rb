class CreateResorts < ActiveRecord::Migration[5.2]
  def change
    create_table :resorts do |t|
      t.string :name
      t.string :city
      t.string :price_range
      t.float :rating

      t.timestamps
    end
  end
end

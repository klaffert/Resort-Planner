class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.string :name
      t.integer :length
      t.integer :price
      t.float :rating

      t.timestamps
    end
  end
end

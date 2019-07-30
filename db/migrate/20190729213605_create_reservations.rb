class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.integer :length
      t.integer :party_size
      t.integer :user_id
      t.integer :resort_id

      t.timestamps
    end
  end
end

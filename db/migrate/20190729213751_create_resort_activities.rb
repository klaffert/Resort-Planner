class CreateResortActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :resort_activities do |t|
      t.integer :activity_id
      t.integer :resort_id

      t.timestamps
    end
  end
end

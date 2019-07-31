class AddUserIdToResortActivities < ActiveRecord::Migration[5.2]
  def change
    add_column :resort_activities, :user_id, :integer
  end
end

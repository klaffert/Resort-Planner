class Resort < ApplicationRecord
    has_many :reservations
    has_many :users, through: :reservations
    has_many :resort_activities
    has_many :activities, through: :resort_activities
end

class Activity < ApplicationRecord
    has_many :resort_activities
    has_many :resorts, through: :resort_activities
end

class ResortActivity < ApplicationRecord
    belongs_to :resort
    belongs_to :activity
    belongs_to :user
end

class Reservation < ApplicationRecord
    belongs_to :resort
    belongs_to :user
    validates :length, numericality: {greater_than: 0, only_integer: true}
    validates :party_size, numericality: {greater_than: 0, only_integer: true}
end

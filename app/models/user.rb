class User < ApplicationRecord
    has_many :reservations
    has_many :resorts, through: :reservations
    has_secure_password
    validates :name, uniqueness: true
    validates :budget, inclusion: { in: %w(low medium high)}
end

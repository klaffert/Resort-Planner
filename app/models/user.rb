class User < ApplicationRecord
    has_many :properties, foreign_key: "user_id", class_name: "Resort"
    has_many :reservations
    has_many :resorts, through: :reservations
end

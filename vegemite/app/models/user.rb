class User < ApplicationRecord
    has_many :reservations
    has_many :owned_gardens, source: :gardens, class_name: 'Garden'
    has_many :booked_gardens, through: :reservations
end

class User < ApplicationRecord
    has_many :reservations
    has_many :owned_gardens, source: :gardens, class_name: 'Garden'
    # from the owner's perspective, as a user
    has_many :booked_gardens, through: :reservations
    # from the grower's perspective, as a user
end

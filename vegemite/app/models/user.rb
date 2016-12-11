class User < ApplicationRecord
    has_secure_password

    has_many :reservations
    has_many :owned_gardens, source: :gardens, class_name: 'Garden'
    # from the owner's perspective, as a user
    has_many :booked_gardens, through: :reservations
    # from the grower's perspective, as a user

    # validates :username, :firstname, :lastname, :email, :type, presence: true
    # validates :email, uniqueness: true
end

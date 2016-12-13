class User < ApplicationRecord
    has_secure_password

    has_many :reservations
    has_many :owned_gardens, source: :gardens, class_name: 'Garden'
    has_many :booked_gardens, through: :reservations

    # validates :username, :firstname, :lastname, :email, presence: true
    # validates :email, uniqueness: true
    # validates :password, presence: true
    # validates :password_confirmation, presence: true

end

class User < ApplicationRecord
    has_secure_password

    has_many :reservations
    has_many :gardens, through: :reservations

    # validates :username, :firstname, :lastname, :email, :type, presence: true
    # validates :email, uniqueness: true
end

class User < ApplicationRecord
    has_secure_password
    has_many :reservations
    has_many :gardens, through: :reservations
    
    # validates :username, :firstname, :lastname, :email, :type, presence: true

    # validates :email, uniqueness: true
    # validates :password, presence: true
    # validates :password_confirmation, presence: true

end

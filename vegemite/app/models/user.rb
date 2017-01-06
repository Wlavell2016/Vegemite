class User < ApplicationRecord
    has_secure_password
    has_many :reservations
    has_many :gardens, through: :reservations
    has_many :owned_gardens, foreign_key: "user_id", class_name: "Garden"

    mount_uploader :avatar, AvatarUploader
    # validates :username, :firstname, :lastname, :email, :type, presence: true

    # validates :email, uniqueness: true
    # validates :password, presence: true
    # validates :password_confirmation, presence: true

end

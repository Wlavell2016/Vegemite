class User < ApplicationRecord
  has_secure_password

  has_many :reservations

<<<<<<< HEAD
  # from the owner's perspective, as a user
  has_many :owned_gardens, source: :gardens, class_name: 'Garden'
  # has_many: :owned_gardens, class_name: 'Garden', foreign_key: :owner_id
  # has_many :garden_reservations, class_name: 'Reservation', source: :reservations, through: :owned_gardens, foreign_key

  # from the grower's perspective, as a user
  has_many :booked_gardens, through: :reservations
  # has_many :booked_gardens, class_name: 'Reservation', foreign_key: :grower_id
  # has_many :reserved_gardens, class_name: 'Garden', source: :garden, through: :booked_gardens

  validates :username, :firstname, :lastname, :email, presence: true
  validates :email, uniqueness: true
  validates :password, presence: true
  validates :password_confirmation, presence: true
=======
    # validates :username, :firstname, :lastname, :email, :type, presence: true
    # validates :email, uniqueness: true
>>>>>>> nickytest
end

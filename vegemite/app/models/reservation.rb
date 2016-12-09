class Reservation < ApplicationRecord
  belongs_to :garden

  belongs_to :grower, class_name: 'User'
  has_one :owner, through: :garden, class_name: 'User'

  # has_one :owner, class_name: 'User', through : :garden
  # belongs_to :grower, class_name: 'User'
end

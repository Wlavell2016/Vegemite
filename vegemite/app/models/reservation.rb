class Reservation < ApplicationRecord
  belongs_to :garden
  belongs_to :user
  # belongs_to :grower, class_name: 'User'
  # belongs_to :owner, class_name: 'User'
  end
end

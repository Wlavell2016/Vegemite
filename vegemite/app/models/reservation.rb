class Reservation < ApplicationRecord
  belongs_to :garden
  belongs_to :user
end

class Reservation < ApplicationRecord
    belongs_to :garden
    belongs_to :user
    has_and_belongs_to_many :vegetables
end

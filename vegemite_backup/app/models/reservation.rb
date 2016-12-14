class Reservation < ApplicationRecord
  belongs_to :garden

  belongs_to :grower, class_name: 'User'
  has_one :owner, through: :garden, class_name: 'User'

  has_one :owner, class_name: 'User', through: :garden
  belongs_to :grower, class_name: 'User'

   validate :check_current_date
      def check_current_date
        if startdate.present? && startdate < Date.today
          errors.add(:startdate, "can't be in the past")
        end
    end
end

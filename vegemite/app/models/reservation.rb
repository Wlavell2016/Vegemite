class Reservation < ApplicationRecord
    belongs_to :garden
    belongs_to :user
    has_and_belongs_to_many :vegetables

   validate :check_current_date
      def check_current_date
        if startdate.present? && startdate < Date.today
          errors.add(:startdate, "can't be in the past")
        end
    end
end

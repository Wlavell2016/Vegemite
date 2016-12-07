class Garden < ApplicationRecord
    belongs_to :owner, class_name: 'User'
    # belongs_to :owner, source: User
    has_many :growers, through: :reservations, source: :users, class_name: 'User'
    has_many :reservations

this is a test of our git hub
    # belongs_to :user
end

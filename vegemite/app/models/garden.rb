class Garden < ApplicationRecord
    belongs_to :owner, class_name: 'User', foreign_key: 'user_id'
    # belongs_to :owner, source: User
    has_many :growers, class_name: 'User', foreign_key: 'user_id'
    


end

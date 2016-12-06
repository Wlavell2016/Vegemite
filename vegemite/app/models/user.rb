class User < ApplicationRecord

    has_many :owned_gardens, class_name: 'Garden'

end

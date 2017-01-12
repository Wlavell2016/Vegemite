class Garden < ApplicationRecord
  belongs_to :user
  has_many :reservations
  has_many :users, through: :reservations
  has_and_belongs_to_many :vegetables

  def self.search(search)
    where("title ILIKE ?", "%#{search}%")
     .or(where("description ILIKE ?", "%#{search}%"))
     .or(where("address ILIKE ?", "%#{search}%"))
    #  .or(where("size ILIKE ?", "%#{search}%"))
    #  .or(where("vegetable ILIKE ?", "%#{search}%"))
  end

  mount_uploader :garden_image, GardenImageUploader
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  # validates :title, :description, :address, :size, presence: true
  # validates :size, numericality: {only_integer: true}

end

class Listing < ApplicationRecord
  validates :available_beds, 
    presence: true, 
    numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :price, 
    presence: true, 
    numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :description, presence: true, length: { maximum: 140}
  validates :welcome_message, presence: true
  belongs_to :city
  has_many :reservations
  has_many :users, through: :reservations
  has_many :admin, foreign_key: 'admin_id', class_name: "Reservation"
end

class Developer < ApplicationRecord
  belongs_to :owner, class_name: 'User'
  has_many :bookings
  has_many :customers, -> { distinct }, through: :bookings
end

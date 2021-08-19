class Developer < ApplicationRecord
  belongs_to :owner, class_name: 'User'
  has_many :bookings
  has_many :customers, -> { distinct }, through: :bookings
  geocoded_by :work_zone
  after_validation :geocode, if: :will_save_change_to_work_zone?
end

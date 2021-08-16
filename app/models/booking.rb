class Booking < ApplicationRecord
  belongs_to :developer
  belongs_to :customer, class_name: 'User'

  # has_one :owner, through: :developer
end

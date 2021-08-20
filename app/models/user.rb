class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings_as_customer, foreign_key: 'customer_id', class_name: 'Booking'
  has_many :developers_as_customer, -> { distinct }, through: :bookings_as_customer, source: :developer

  has_many :developers_as_owner, foreign_key: 'owner_id', class_name: 'Developer' , dependent: :destroy
  # has_many :bookings_as_owner

  def full_name
    [first_name, last_name].join(' ')
  end
end

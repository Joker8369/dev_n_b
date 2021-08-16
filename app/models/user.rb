class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings_as_customer, foreign_key: 'customer_id', class_name: 'bookings'
  has_many :developers_as_customer, -> { distinct }, through: :bookings_as_customer, source: :developer

  has_many :developers_as_owner, foreign_key: 'owner_id', class_name: 'Developer'
  # has_many :bookings_as_owner


end
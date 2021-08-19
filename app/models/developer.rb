class Developer < ApplicationRecord
  belongs_to :owner, class_name: 'User'
  has_many :bookings
  has_many :customers, -> { distinct }, through: :bookings
  geocoded_by :work_zone
  after_validation :geocode, if: :will_save_change_to_work_zone?
  LANGAGE = ["Ruby On Rails ", "Javascript", "VuJS", "C", "Java", "GO", "Python", "PHP", "Jquery"]
  validates :prog_langage, presence: true, inclusion: { in: LANGAGE }
  validates :price_day, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :work_zone, presence: true
end

class Project < ApplicationRecord
  belongs_to :developer
  has_one_attached :photo
end

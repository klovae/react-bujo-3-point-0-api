class Task < ApplicationRecord
  belongs_to :day
  has_many :migrations
end
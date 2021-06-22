class Task < ApplicationRecord
  belongs_to :day
  has_many :migrations

  validates :content, presence: { message: "A task must have a description." }
end
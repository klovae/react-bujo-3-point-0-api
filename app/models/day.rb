class Day < ApplicationRecord
  has_many :tasks
  has_many :migrations

  def human_time
    self.date.strftime("%A, %B %-d, %Y")
  end

  def self.today
      find_or_create_by(date: Time.zone.today.beginning_of_day)
  end

  def self.tomorrow
      find_or_create_by(date: Time.zone.tomorrow.beginning_of_day)
  end
end
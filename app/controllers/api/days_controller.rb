class Api::DaysController < ApplicationController

  def index
    Day.today
    Day.tomorrow
    days = Day.all
    render json: DayWithTasksSerializer.new(days).to_serialized_json
  end

end
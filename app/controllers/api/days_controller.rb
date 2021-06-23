class Api::DaysController < ApplicationController

  def index
    days = Day.all
    render json: DayWithTasksSerializer.new(days).to_serialized_json
  end

end
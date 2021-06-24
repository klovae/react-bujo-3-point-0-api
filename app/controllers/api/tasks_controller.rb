class Api::TasksController < ApplicationController

  def index
    tasks = Task.all
    render json: TasksSerializer.new(tasks).to_serialized_json
  end

end
class Api::TasksController < ApplicationController

  def index
    tasks = Task.all.where(complete: false)
    render json: TasksSerializer.new(tasks).to_serialized_json
  end

  def create
    task = Task.new(task_params)
    if task.save
      render json: TasksSerializer.new(task).to_serialized_json
    end
  end

  def update
    task = Task.find_by_id(params[:id])
    if task.update(task_params)
      render json: TasksSerializer.new(task).to_serialized_json
    end
  end

  
  private

  def task_params
    params.require(:task).permit(:id, :content, :complete, :day_id)
  end

end
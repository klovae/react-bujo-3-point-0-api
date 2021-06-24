class TasksSerializer
  def initialize(task_object)
    @task = task_object
  end

  def to_serialized_json
    options = {
      include: {
        day: {
          only: [:date]
        },
        
      }, except: [:created_at, :updated_at]
    }

    @task.to_json(options)
  end
  
end
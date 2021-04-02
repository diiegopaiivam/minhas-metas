json.extract! task, :id, :name, :description, :status, :estimative, :value, :priority, :created_at, :updated_at
json.url task_url(task, format: :json)

json.array!(@training_plans) do |training_plan|
  json.extract! training_plan, :id, :name, :description
  json.url training_plan_url(training_plan, format: :json)
end

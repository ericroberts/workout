class TrainingPlan < ActiveRecord::Base
  validates :name, :description, presence: true
end

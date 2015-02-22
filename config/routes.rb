Rails.application.routes.draw do
  resources :training_plans
  devise_for :users
  root to: "training_plans#index"
end

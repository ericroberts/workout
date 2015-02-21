Rails.application.routes.draw do
  resources :training_plans

  devise_for :users
  root to: "pages#home"
end

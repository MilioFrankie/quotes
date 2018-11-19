Rails.application.routes.draw do
  root "q_generators#index"
  devise_for :users

  resources :q_generators
end

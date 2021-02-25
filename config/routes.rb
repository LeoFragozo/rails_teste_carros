Rails.application.routes.draw do
  root "carros#index"
  resources :carros
end

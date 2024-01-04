Rails.application.routes.draw do
  resources :plants
  resources :people
  
  root "plants#index"
end

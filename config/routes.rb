Rails.application.routes.draw do
  resources :railway_stations
  resources :trains
  resources :cars
  get 'welcome/index'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :air_quality_observations, except: [:new, :edit]
  root to: 'air_quality_observations#index'
end

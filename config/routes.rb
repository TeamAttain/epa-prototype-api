Rails.application.routes.draw do
  root to: 'air_quality_observations#index'
  namespace :api do
    resources :air_quality_observations, except: [:new, :edit]
  end
end

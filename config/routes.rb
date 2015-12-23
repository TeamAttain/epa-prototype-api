Rails.application.routes.draw do
  resources :activities, except: [:new, :edit]
  root to: 'air_quality_observations#index'
  namespace :api do
    resources :air_quality_observations, except: [:new, :edit]
    resources :activities, only: [:index, :post, :create] do
      collection do
        get :ratio
      end
    end
  end
end

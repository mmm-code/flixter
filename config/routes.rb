Rails.application.routes.draw do
  resource :dashboard, only: [:show]
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#index'
  get 'privacy', to: 'static_pages#privacy'
  get 'careers', to: 'static_pages#careers'
  get 'team', to: 'static_pages#team'
  get 'alumni', to: 'static_pages#alumni'
  resources :courses, only: [:index, :show] do
    resources :enrollments, only: :create
  end
  resources :lessons, only: [:show]
  namespace :instructor do
    resources :lessons, only: [:update]
    #resources :courses, only: [:new, :create, :show] do
      #resources :sections, only: [:new, :create] do
        #resources :lessons, only: [:new, :create]
    # L18 reroute
    resources :sections, only: [:update] do
      resources :lessons, only: [:create]
    end
    resources :courses, only: [:new, :create, :show] do
      resources :sections, only: [:create]
    end
  end
end

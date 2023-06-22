Rails.application.routes.draw do
# <<<<<<< HEAD
# =======
#   # resources :comments
#   # resources :recipes
# >>>>>>> 1eb86b4 (exo 2)
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  ExceptionHunter.routes(self)
  mount_devise_token_auth_for 'User', at: '/api/v1/users', controllers: {
    registrations: 'api/v1/registrations',
    sessions: 'api/v1/sessions',
    passwords: 'api/v1/passwords'
  }

  namespace :api do
    namespace :v1, defaults: { format: :json } do
      get :status, to: 'api#status'

      devise_scope :user do
        resource :user, only: %i[update show]
      end
      resources :settings, only: [] do
        get :must_update, on: :collection
      end
# <<<<<<< HEAD
      resources :recipes, only: :index
# =======
      # resources :recipes, only: [:index]
      resources :comments, only: [:index, :create]
# >>>>>>> 1eb86b4 (exo 2)
    end
  end
end

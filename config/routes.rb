Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users
      resources :utilities
      resources :bills
      resources :companies
      post '/login', to: 'users#login'
      get '/validate', to: 'users#validate'
      get '/admin/utilities', to: 'companies#index'
      post  '/signup',  to: 'users#create'
      put '/admin/user', to: 'users#update'
      put 'admin/bills/show', to: 'bills#update'
      post 'admin/utilities/new', to: 'utilities#create'
      put 'admin/utilities/new', to: 'users#update'
      post 'admin/utilities/show', to: 'bills#create'
      delete 'admin/utilities/show', to: 'bills#destroy'



    end
  end
end

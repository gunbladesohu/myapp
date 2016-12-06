Rails.application.routes.draw do
  get 'sessions/new'

  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get  '/home', to: 'static_pages#home'
  get  '/help', to: 'static_pages#help'
  get  '/about', to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :research_designs
  resources :confidence_ratings
  resources :credibility_ratings
  resources :evidence_sources
  resources :evidence_items
  resources :method_sdms
  resources :methodologies
  
  resources :users
  resources :account_activations, only: [:edit]  
  resources :password_resets,     only: [:new, :create, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root 'static_pages#home'
end

Rails.application.routes.draw do


  get 'password_resets/new'

  get 'password_resets/edit'

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

  get    '/moderate',   to: 'moderate#listModerateTask'
  put    '/moderate/accept',   to: 'moderate#accept'
  put    '/moderate/refuse',   to: 'moderate#refuse'

  get    '/moderate',   to: 'moderate#listModerateTask'

  resources :research_designs
  resources :confidence_ratings
  resources :credibility_ratings
  resources :evidence_sources

  resources :evidence_items

  resources :method_sdms
  resources :methodologies
  
  resources :users do
    member do
      get :following, :followers
      get :usernews
    end
  end

#  resources :search, only: [:index] do
#    collection { post :search, to: 'search#index' }
#  end
  post   '/search',   to: 'search#index'

  resources :search, only: [:index]
  
  resources :account_activations, only: [:edit]  
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :microposts,          only: [:create, :destroy]
  resources :relationships,       only: [:create, :destroy]
  resources :user_news,           only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root 'static_pages#home'
end

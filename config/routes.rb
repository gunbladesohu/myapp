Rails.application.routes.draw do
  resources :research_designs
  resources :confidence_ratings
  resources :credibility_ratings
  resources :evidence_sources
  resources :evidence_items
  resources :method_sdms
  resources :methodologies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root 'welcome#index'
end

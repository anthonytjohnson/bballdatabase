Rails.application.routes.draw do
  resources :player_stats
  resources :teams
  resources :players, except: [:index]
  root to: 'players#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

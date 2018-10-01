Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
      resources :stocks, except: [:edit]
      resources :holdings
      resources :general_partners, except: [:new, :edit]
      resources :investors, only: [:create, :index]
      post '/login', to: 'auth#create'
      get '/profile', to: 'investors#profile'
      mount ActionCable.server => '/cable'
end

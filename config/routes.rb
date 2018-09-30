Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
      resources :stocks, except: [:edit]
      resources :holdings
      resources :general_partners, except: [:new, :edit]

end

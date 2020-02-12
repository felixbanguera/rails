Rails.application.routes.draw do
	root 'home#index'
  	resources :users, only: [:new, :create]
 	resources :sessions, only: [:new, :create, :destroy, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  	resources :profiles

  	resources :search, only: [:index]
end

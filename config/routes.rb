Rails.application.routes.draw do
  

  root 'movies#index'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  resources :movies do
  	collection do
  		get 'search'
  	end
  	resources :reviews, except: [:show, :index]
  end
end

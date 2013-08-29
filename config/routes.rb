MyApp::Application.routes.draw do
  root :to => "home#index"

  resources :users

  resources :questions

  resources :comments

  post '/login', :to => 'sessions#create', as: 'login'
  delete '/logout', :to => 'sessions#destroy', :via => :delete
end

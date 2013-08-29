MyApp::Application.routes.draw do
  root :to => "home#index"

  resources :users, :questions, :comments, :tags

  post '/login', :to => 'sessions#create', as: 'login'
  delete '/logout', :to => 'sessions#destroy', :via => :delete
end

MyApp::Application.routes.draw do
  root :to => "questions#index"

  resources :users, :questions, :comments, :tags, :answers

  post '/login', :to => 'sessions#create', as: 'login'
  delete '/logout', :to => 'sessions#destroy', :via => :delete
end

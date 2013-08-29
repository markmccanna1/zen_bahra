MyApp::Application.routes.draw do
  root :to => "home#index"

  resources :users, :questions, :comments

  post '/login', :to => 'sessions#create', as: 'login'
  delete '/logout', :to => 'sessions#destroy', :via => :delete
  # delete 'logout' => :destroy
end

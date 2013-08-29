MyApp::Application.routes.draw do

  root :to => "home#index"

  resources :users

  resources :questions

  resources :comments

  resources :tags

end

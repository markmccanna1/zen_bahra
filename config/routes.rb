MyApp::Application.routes.draw do
  root :to => "home#index"

  resources :answers do
  end
end

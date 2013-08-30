MyApp::Application.routes.draw do
  root :to => "questions#index"

  resources :users, :tags, :comments

  resources :questions do 
    resources :answers
  end

  post '/login', :to => 'sessions#create', as: 'login'
  delete '/logout', :to => 'sessions#destroy', :via => :delete
  post '/questions/:question_id/comments/new', :to => 'comments#question'
  post '/answers/:answer_id/comments/new', :to => 'comments#answer'
end



MyApp::Application.routes.draw do
  root :to => "home#index"

  # resources :users

  # resources :questions
  get '/questions/:id', to: 'questions#show', as: 'question'
  get '/questions', to: 'questions#index', as: 'questions'
  get '/questions/new', to: 'questions#new', as: 'new_question'
  post '/questions', to: 'questions#create'
  get '/questions/:id/edit', to:'questions#edit', as: 'edit_question'
  delete '/questions/:id', to: 'questions#destroy', as: 'cool_mark'
  put 'questions/:id', to: 'questions#update'

end

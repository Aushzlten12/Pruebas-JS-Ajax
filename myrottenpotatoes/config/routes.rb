Myrottenpotatoes::Application.routes.draw do
  mount JasmineRails::Engine => '/specs' if defined?(JasmineRails)
  #resources :movies
  resources :movies do
  resources :reviews
end
  get 'auth/:provider/callback', to: 'sessions#create'
  get '/login', to: 'sessions#new'
  post 'logout' => 'sessions#destroy'
  root :to => redirect('/movies')
end

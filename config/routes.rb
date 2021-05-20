Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :subscriptions
  resources :locations
  resources :news
  resources :users

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  get 'feed.rss', to: 'feeds#index', :format => 'rss'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

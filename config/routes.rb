Rails.application.routes.draw do
  resources :subscriptions
  resources :locations
  resources :news
  resources :users
  get 'feed.rss', to: 'feeds#index', :format => 'rss'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

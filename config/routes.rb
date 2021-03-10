Rails.application.routes.draw do
  resources :journal_entries
  resources :categories
  resources :users

  post "/handle_login", to: 'users#handle_login'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

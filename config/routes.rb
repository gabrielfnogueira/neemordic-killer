Rails.application.routes.draw do
  root 'guns#index'
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :places
  resources :guns
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

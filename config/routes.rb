Rails.application.routes.draw do
  resources :personas, only:[:index, :show]
  resources :collectives
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

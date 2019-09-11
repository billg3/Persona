Rails.application.routes.draw do
  
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :collectives do
      resources :personas
    end
  
    resources :personas
  
    resources :users, only: [:new, :create, :show]
  
  
    root 'welcome#home'
  
      get '/signin' => 'sessions#new'
      post '/signin' => 'sessions#create'
      post '/signout' => 'sessions#destroy'
      delete "/signout", to: "sessions#destroy"
  
      get '/search' => 'pages#search', :as => 'search_page'

      get '/auth/facebook/callback' => 'sessions#create'

      # get '/auth/facebook' => 
  
      post '/filter' => "collectives#filter"
  
      get '/category_filter' => 'collectives#category_filter'
  
  end
  
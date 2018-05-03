Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'
  get 'user/show', to: 'users#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/login', to: "sessions#new"
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

end

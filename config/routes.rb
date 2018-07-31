Rails.application.routes.draw do

  get '/', to: 'static_pages#home'

  get '/inscription', to: 'users_controller#new'
  post '/inscription', to: 'users_controller#create'  

  get '/users/:id', to: 'users_controller#show'
  get '/erreur', to: 'users_controller#erreur'
end

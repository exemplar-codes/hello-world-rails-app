Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # DSL => _VERB_ "_route_", to: "_action_"
  root 'application#hello'

  # resources :shirts # all 7 REST actions in one go
  get '/shirts', to: 'shirts#index'
  get '/shirts/:id', to: 'shirts#show'

  # get '/shirts/:id/new', to: 'shirts#new' ignore, working with JSON only
  post '/shirts/', to: 'shirts#create'
end

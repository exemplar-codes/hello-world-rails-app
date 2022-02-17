Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "application#hello"

  get "/tshirt", to: "application#tshirt"

  # DSL => _VERB_ "_route_", to: "_action_"
end

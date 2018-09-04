Rails.application.routes.draw do
  # root "controller#actionAKAmethod"
  root "subs#index"

  resources :subs

  # URL-PROTOCOL "url case", to: "controller#actionAKAmethod"
  GET "/subs", to: "subs#index"
  GET "/subs/:id", to: "subs#show"
  DELETE "/subs/:id", to: "subs#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  #this maps the apps root route, to the index action method within the AccountsController (accounts_controller.rb)
  root "accounts#index"

  #get "/accounts", to:"accounts#index"#
  #get "/accounts/:id", to:"accounts#show"#

  #resource method provides pre-made mapped "_url" and _"path" helpers" for conventional CRUD routes
  resources :accounts

end

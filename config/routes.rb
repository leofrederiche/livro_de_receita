Rails.application.routes.draw do
  
  root to: "welcome#index"

  get "/recipes", to: "recipes#index", as: :recipes
  get "/recipe/:id", to: "recipes#show", as: :recipe
  get "/recipes/new", to: "recipes#new", as: :new_recipe
  post "/recipes/new", to: "recipes#create", as: false

  devise_for :users

end

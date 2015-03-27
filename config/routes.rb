Rails.application.routes.draw do
  
  root to: "welcome#index"

  get "/recipes", to: "recipes#index", as: :recipes

  get "/recipe/", to: "recipes#show", as: :recipe

  devise_for :users

end

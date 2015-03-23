Rails.application.routes.draw do
  
  root to: "welcome#index"

  get "/recipes", to: "recipes#index", as: :recipes

  devise_for :users

end

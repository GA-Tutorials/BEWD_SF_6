Rails.application.routes.draw do
  get "/something" => "dogs#index"
  resources :dogs
  root "dogs#index"
  # post "/posts/:id/upvote" => "dogs#upvote"

end

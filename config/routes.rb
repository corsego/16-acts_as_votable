Rails.application.routes.draw do
  resources :posts do
    member do
      patch "upvote", to: "posts#upvote"
      patch "downvote", to: "posts#downvote"
    end
  end
  devise_for :users
  root "dashboard#index"
  get 'dashboard/index'
end

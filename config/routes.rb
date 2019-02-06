Rails.application.routes.draw do
  devise_for :users
  root 'links#index'
  resources :links do
    member do
      put 'upvote', to: 'links#upvote'
      put 'downvote', to: 'links#downvote'
    end
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

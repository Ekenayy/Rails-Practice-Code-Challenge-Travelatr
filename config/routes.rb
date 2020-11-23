Rails.application.routes.draw do
  resources :bloggers, only: [:index, :new, :create, :show]
  resources :destinations, only: [:index, :show]
  resources :posts, only: [:index, :new, :create, :update, :edit, :show]
  put '/posts/:id/likes', to: 'posts#post_liked', as: 'post_liked'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

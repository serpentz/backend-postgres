Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   resources :posts, :users, :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  	post 'posts/:id/add', to: "posts#add"
  	root 'posts#index'
end

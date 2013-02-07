 CourseProject::Application.routes.draw do

  devise_for :users

  resources :users, only:[:create] 
  resources :votes
  
  resources :posts do
  	resources :comments, only:[:create, :show]
  end

  resources :topics do
    resources :replies, only:[:create, :show]
  end 

  root to: "main#index"

  get "static_pages/profile"
  get "static_pages/contact"
  get "static_pages/about"
  match "profile" => "static_pages#profile"
  match "contact" => "static_pages#contact"
  match "about" => "static_pages#about"

end

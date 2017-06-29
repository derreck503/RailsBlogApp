Rails.application.routes.draw do
  # Setting root of site 
  root 'posts#index'

  # Setting regular get route
  get 'about' => 'pages#about'
  
  # Generate all routes for controller. Run 'rake routes' to view routes
  resources :posts


end

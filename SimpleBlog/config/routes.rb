Rails.application.routes.draw do
  # Setting root of site 
  root 'posts#index', as: 'home'

  # Setting regular get route
  get 'about' => 'pages#about', as: 'about'
  
  # Generate all routes for controller. Run 'rake routes' to view routes
  resources :posts do 
    resources :comments
    end


end

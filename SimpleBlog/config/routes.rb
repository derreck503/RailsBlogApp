Rails.application.routes.draw do
  # Setting domain root 
  root 'posts#index'

  # Setting url path for about page
  get 'about' => 'pages#about'

  
end

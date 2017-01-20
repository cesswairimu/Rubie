Rails.application.routes.draw do


  root to: 'visitors#new'
  get 'about' => 'pages#about'
  get 'contact' => 'pages#contact'

end

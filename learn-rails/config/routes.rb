Rails.application.routes.draw do



  root to: 'visitors#new'
  get 'about' => 'pages#about'
  get 'contact' => 'contacts#new'
  resources :contacts, only: [:new, :create]

end

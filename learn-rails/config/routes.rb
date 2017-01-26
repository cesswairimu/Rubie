Rails.application.routes.draw do


  get 'contacts/new'

  root to: 'visitors#new'
  get 'about' => 'pages#about'
  get 'contact' => 'pages#contact'

end

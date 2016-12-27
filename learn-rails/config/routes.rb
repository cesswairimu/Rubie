Rails.application.routes.draw do
  get 'visitors/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: redirect('about.html')
end

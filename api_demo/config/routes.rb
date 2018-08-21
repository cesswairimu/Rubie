Rails.application.routes.draw do
namespace :api, path: '/', constraints: { subdomain: 'api' } do
  resources :users
  end
end

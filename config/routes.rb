Rails.application.routes.draw do
  root "meetings#index"
  resources :meetings
  get 'blogs/index'
  #root 'blogs#index'
  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

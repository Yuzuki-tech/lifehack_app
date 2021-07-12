Rails.application.routes.draw do
  get 'home_pages/home'
  get 'home_pages/tag'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'application#hello'


end

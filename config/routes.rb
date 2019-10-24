Rails.application.routes.draw do

  resources :class_sections
  resources :professors
  resources :offices
  resources :courses

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :line_items
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :products
end

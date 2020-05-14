Rails.application.routes.draw do
  root "gifs#index"
  resources :gifs, only: %w(index create)
end

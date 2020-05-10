Rails.application.routes.draw do
  resources :gifs, only: %w(index create)
  root "gifs#index"
end

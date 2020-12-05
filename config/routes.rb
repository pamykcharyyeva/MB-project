Rails.application.routes.draw do
  
  resources :newsletters
    resources :stories
  
post '/newsletters/:id/publish', to: 'newsletters#publish', as: 'publish'

root to: "api/newsletters#index"

end

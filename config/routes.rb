Rails.application.routes.draw do
  
  resources :newsletters 
    resources :stories
  
post '/newsletters/:id/publish', to: 'newsletters#publish', as: 'publish'
# post '/newsletters/stories/:id/publish_story', to: 'stories#publish_story', as: 'story'
# root to: "api/newsletters#index"

end
 
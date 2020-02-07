Rails.application.routes.draw do
  get '/challenges', to: 'challenges#index'

  get '/projects', to: 'projects#index'
  get '/projects/:id', to: 'projects#show'
end

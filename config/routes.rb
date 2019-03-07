Rails.application.routes.draw do
  resources :properties
  resources :repairs

  namespace :triage do
    get '/1', action: 'offer_help'
    get '/end', action: 'end'
  end

  root 'triage#start', as: 'triage_start'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

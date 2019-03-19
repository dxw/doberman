Rails.application.routes.draw do
  resources :repairs, except: :delete do
    resources :repair_updates, path: 'updates', only: :create
  end

  namespace :triage do
    get '/select', action: 'select_issue_type'
    get '/solution', action: 'solution'
    get '/done', action: 'done'
  end

  root 'landing#index'
end

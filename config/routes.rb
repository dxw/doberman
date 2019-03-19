Rails.application.routes.draw do
  namespace :auth do
    get '/log_in', action: 'log_in'
    get '/log_in_as_admin', action: 'log_in_as_admin'
    get '/log_out', action: 'log_out'
  end

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

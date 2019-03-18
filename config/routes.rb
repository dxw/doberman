Rails.application.routes.draw do
  resources :repairs, except: :delete do
    resources :repair_updates, path: 'updates', only: :create
  end

  namespace :triage do
    get '/solution', action: 'solution'
    get '/done', action: 'done'
  end

  root 'triage#select_issue_type', as: 'triage_select_issue_type'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

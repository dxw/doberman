Rails.application.routes.draw do
  get '/admin/repairs/:id', controller: :repairs, action: 'show_admin'

  resources :properties
  resources :repairs

  namespace :triage do
    get '/solution', action: 'solution'
    get '/done', action: 'done'
  end

  root 'triage#select_issue_type', as: 'triage_select_issue_type'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

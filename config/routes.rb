Rails.application.routes.draw do
  root 'welcome#index'
  resources :activity_logs, only: [:index, :create]
end

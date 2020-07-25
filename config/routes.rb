Rails.application.routes.draw do
  resources :activity_logs, only: [:index]
end

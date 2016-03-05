Rails.application.routes.draw do

  # User Devise Routes
  devise_for :users, controllers: {sessions: 'users/sessions', registrations: 'users/registrations', passwords: 'users/passwords', confirmations: 'users/confirmations'}
  root 'user_dashboards#index'

  scope '/admin' do
    get '/dashboard', to: 'admin/dashboards#index', as: 'admin_dashboard'
  end
  get '/dashboard', to: 'user_dashboards#dashboard', as: 'user_dashboard'

end

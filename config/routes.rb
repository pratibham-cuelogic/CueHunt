Rails.application.routes.draw do

  # User Devise Routes
  devise_for :users, controllers: {sessions: 'users/sessions', registrations: 'users/registrations', passwords: 'users/passwords', confirmations: 'users/confirmations'}
  root 'user_dashboards#index'

  scope '/admin' do
    get '/dashboard', to: 'admin/dashboards#index', as: 'admin_dashboard'
    get '/invite-candidate', to: 'admin/users#invite_candidate', as: 'invite_candidate'
    post '/send_invitation_to_candidate', to: 'admin/users#send_invitation_to_candidate', as: 'send_invitation_to_candidate'
    get '/online-candidates', to: 'admin/users#online_candidates',as: 'online_candidates'
  end
  get '/dashboard', to: 'user_dashboards#dashboard', as: 'user_dashboard'

end

Rails.application.routes.draw do
  use_doorkeeper do
    skip_controllers :authorizations, :applications,
      :authorized_applications
  end
  # use_doorkeeper scope: 'scope'

  # # Place routes under additional scope
  # scope 'auth' do
  #   use_doorkeeper scope: 'endpoint' do
  #     # Customize controllers
  #     controllers authorizations: 'custom_authorizations',
  #                 tokens: 'custom_authorizations',
  #                 applications: 'custom_authorizations',
  #                 token_info: 'custom_authorizations'

  #     as authorizations: 'custom_auth',
  #        tokens: 'custom_token',
  #        token_info: 'custom_token_info'
  #   end
  # end
  # devise_for :users, controllers: {
  #   sessions: 'users/sessions'
  # }
  resources :items
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root to: 'items#index'
  resources :users
end

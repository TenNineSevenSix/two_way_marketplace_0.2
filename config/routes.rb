Rails.application.routes.draw do
  resources :messages
  get 'task_list/new'

  root to: 'home#index'
  get 'home/index'
  get 'home/search'
  resources :student_profiles
  resources :tutor_profiles
  devise_for :users, controllers: {
        sessions: 'users/sessions', registrations: 'users/registrations', passwords: 'users/passwords', shared: 'users/shared'
      }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

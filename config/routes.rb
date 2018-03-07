Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # root 'users#new' as 'new_user'

#show and edit will be one and the same thing for a user
  resources :users, only: [:index, :new, :create]

# resources :sessions, only: [:new, :create, :destroy]


get     '/login' =>          'sessions#new', as: 'login'
post    '/login' =>              'sessionss#create'
get     '/logout' =>          'sessions#destroy', as: 'logout'

end

# get     'users' =>              'users#index', as: 'users'
#
# post    'users' =>              'users#create'
#
# get     'users/:id' =>          'users#show', as: 'user'
#
# patch   'users/:id' =>          'users#update'
#
# get     'users/:id/edit' =>     'users#edit', as: 'edit_user'

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'users#new' as 'new_user'

  resources :users, only: [:index, :new, :create]
end

#show and edit will be one and the same

# get     'users/new' =>          'users#new', as: 'new_user'
#
# get     'users' =>              'users#index', as: 'users'
#
# post    'users' =>              'users#create'
#
# get     'users/:id' =>          'users#show', as: 'user'
#
# patch   'users/:id' =>          'users#update'
#
# get     'users/:id/edit' =>     'users#edit', as: 'edit_user'

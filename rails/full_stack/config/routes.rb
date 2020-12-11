Rails.application.routes.draw do
  get 'herbs' => 'herb#index', as: 'herbs'
  get 'herb/new' => 'herb#new', as: 'new_herb'
  get 'herb/:id' => 'herb#show', as: 'herb'
  post 'herbs' => 'herb#create'
  delete 'herb/:id' => 'herb#destroy', as: 'delete_herb'
  get 'herb/:id/edit' => 'herb#edit', as: 'edit_herb'
  patch 'herb/:id' => 'herb#update'
end

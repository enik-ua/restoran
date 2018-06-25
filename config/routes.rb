Rails.application.routes.draw do

  get    '/menu',         to: 'menu#index'
  get    '/menu/new',     to: 'menu#new'
  post   '/menu',         to: 'menu#create'
  get    '/menu/:id/edit',to: 'menu#edit'
  get    '/menu/:id',     to: 'menu#show'
  patch  '/menu/:id',     to: 'menu#update'
  put    '/menu/:id',     to: 'menu#update'
  delete '/menu.:id',     to: 'menu#destroy'

  resources :users
  get    '/login',        to: 'sessions#new'
  post   '/login',        to: 'sessions#create'
  delete '/logout',       to: 'sessions#destroy'
  get    '/signup',       to: 'users#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'menu#list'
end

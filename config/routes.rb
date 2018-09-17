Rails.application.routes.draw do
  resources :denounces, only: [:index, :create, :destroy, :update, :show], defaults: {format: 'json'}
  resources :bots, only: [:index, :create, :destroy, :update, :show], defaults: {format: 'json'}
  resources :teenagers, only: [:index, :create, :destroy, :update, :show], defaults: {format: 'json'}
  resources :teenager_histories, only: [:index, :create, :destroy, :update, :show], defaults: {format: 'json'}
  resources :psychologists, only: [:index, :create, :destroy, :update, :show], defaults: {format: 'json'}
  resources :tokens, only: [:index, :create, :destroy, :update, :show], defaults: {format: 'json'}
  resources :denounce_types, only: [:index, :create, :destroy, :update, :show], defaults: {format: 'json'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root 'denounce_types#index'
end
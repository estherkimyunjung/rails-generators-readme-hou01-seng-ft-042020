Rails.application.routes.draw do
  resources :accounts
  get 'admin/dashboard'

  get 'admin/status'

  get 'admin/financials'

  get 'admin/setting'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'categories/show'

  resources :posts, only: [:index, :show, :new, :create, :edit, :update]
  resources :categories
end

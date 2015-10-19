Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  get 'welcome/about'

  get 'welcome/contact'

  get 'welcome/faq'

  get 'welcome/features'

  get 'welcome/pricing'

  resources :invoices
  root to: 'welcome#index'
end

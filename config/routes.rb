Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'

  get 'pages/contact'
  get 'pages/association'

  devise_for :users
  root to: 'pages#home'

  resources :profiles, :posts
end

Rails.application.routes.draw do
  resources :usr_buyer_payment_methods
  get 'usr_buyer/index'

  get 'usr_buyer/new'

  post 'usr_buyer/create'

  get 'usr_buyer/edit'

  post 'usr_buyer/update'

  post 'usr_buyer/destroy'

  resources :usr_vender

  root 'usr_vender#index'
  # get 'usr/index'
  #
  # get 'usr/register'

  #devise_for :usr_contacts


  devise_for :usr_contacts, :controllers => { registrations: 'registrations' }
  #devise_for :contacts
  # devise_scope :contacts do
  #   #@request.env["devise.mapping"] = Devise.mappings[:users]
  #   match '/users/index', to: 'devise/sessions#new', via: :get
  #   get 'users/index' => "users"
  #   get 'users/register'
  # end

  devise_scope :usr_contacts do
    get '/usr/index' => "usr#index"
    get '/usr/register' => "usr#register"
  end

  #resourceful route for usr_roles controller
  resources :usr_roles

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get 'buyer/index'

  get 'buyer/new'

  get 'buyer/create'

  get 'buyer/edit'

  get 'buyer/update'

  get 'buyer/destroy'

  get 'usr_vender/registration'

  get 'usr_vender/index'

  root 'usr#index'
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

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

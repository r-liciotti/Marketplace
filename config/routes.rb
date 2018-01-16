Rails.application.routes.draw do

  resources :contents
  devise_for :users
  # root: comando solo per la pagina iniziale
  root 'pages#home'

  #   get 'about' => 'pages#about'
  # Spiegazione: una volta clicato il link about deve far partire il controller pages#about
  get 'about' => 'pages#about'


  post '/compra/:slug', to: 'transaction#create', as: :compra
  get '/pickup/:guid', to: 'transaction#pickup', as: :pickup

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

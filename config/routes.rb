Rails.application.routes.draw do
  resources :reporte_general
  post '/reportes', to: 'reportes#create'
  get '/reportes/new', to: 'reportes#new', as: :new_reporte
  get 'reportes', to: 'reportes#index'
  get 'reportes/:id', to: 'reportes#show', as: :reporte

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

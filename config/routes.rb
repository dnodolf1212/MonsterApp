Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/monsters', to: 'monsters#index'
  get '/monsters/:id', to: 'monsters#show', as: 'monster'
end

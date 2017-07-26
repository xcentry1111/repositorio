Rails.application.routes.draw do
  resources :people
  get 'creatives/index'

  get 'creatives/new'

  get 'creatives/edit'

  get 'creatives/destroy'

  get 'creatives/update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :creatives
  root "creatives#index"
end

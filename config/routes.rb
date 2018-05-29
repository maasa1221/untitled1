Rails.application.routes.draw do
  get 'calendar/index'
  root "top#index"
  get "lesson/:action(/:name)" => "lesson"
  resources :topics



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :vendor_sweets
  resources :vendors
  resources :sweets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/sweets', to: "sweets#index", as: "sweets"
  # get '/vendors', to: "vendors#index", as: "vendors"

end

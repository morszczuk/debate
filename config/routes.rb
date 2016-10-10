Rails.application.routes.draw do
    resources :attendants, only: [:index, :create]
    get "attendants/generate_csv", to: "attendants#generate_csv"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

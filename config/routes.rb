SheltrOhanaUi::Application.routes.draw do
  resources :services
  root "services#index"
end

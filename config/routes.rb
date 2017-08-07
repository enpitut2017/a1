Rails.application.routes.draw do
  resources :stories do

  patch 'like', to: 'stories#like'
end
  root 'stories#index'

end

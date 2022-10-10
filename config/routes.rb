Rails.application.routes.draw do
  resources :urls
  root to: "urls#new"  
  
end

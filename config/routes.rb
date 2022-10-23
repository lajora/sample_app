Rails.application.routes.draw do
  get 'static_pages/home', to: 'static_pages#home'
  get 'static_pages/help', to: 'static_pages#help'
  get 'static_pages/about', to: 'static_pages#about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

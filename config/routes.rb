Rails.application.routes.draw do

  namespace :admin do
    resources :access, :only => [:index, :update]
    resources :settings, :only => [:index, :update]
  end

  resources :artists do
    resources :songs, only: [:index, :show]
  end
  resources :songs

end

Rails.application.routes.draw do
  devise_for :users
  root to: 'projects#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



  resources :projects do
    collection do
        get 'vr', to: 'projects#vr'
    end
    member do
      get 'showvr', to: 'projects#showvr'
      get 'lastest', to: 'projects#lastest'
    end

  end

end

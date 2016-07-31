Rails.application.routes.draw do
  resources :lights do
    collection do
      post 'bounds'
    end
  end
  resources :trees do
    collection do
      post 'bounds'
    end
  end

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :people do
        resources :projects
      end
    end
  end
  #resources :projects
  #resources :people
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check
  
  # we say that by visiting localhost:3000 the ROOT is index, so it shows us the index "view" that matches index controller method
  root "articles#index"

  # GET REQUESTS TO /ARTICLES GET MAPPED TO THE #INDEX CONTROLLER METHOD WHICH LEDS US TO INDEX.HTML.ERB
  # get "/articles", to: "articles#index"
  # GET REQUESTS TO /ARTICLES/ID GET MAPPED TO #SHOW CONTROLLER METHOD WHICH LEDS US TO SHOW.HTML.ERB
  # get "/articles/:id", to: "articles#show"
  
  # to get these routes created we can use:
  resources :articles
  # that creates us all the crud methods, like the JPA dependency in spring boot 
  # bin/rails routes shows us all the mapped methods


  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
end

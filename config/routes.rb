Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  devise_for :users, path: "api/v1/users", controllers: {
    sessions: "api/v1/users/sessions",
    registrations: "api/v1/users/registrations"
  }

  namespace :api do
    namespace :v1 do
      get "posts/index"
      get "posts/show"
      post "posts/create"
      put "posts/update"
      delete "posts/destroy"
    end
  end
end

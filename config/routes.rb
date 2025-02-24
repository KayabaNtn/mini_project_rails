Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  devise_for :users, path: "api/v1/users", controllers: {
    sessions: "api/v1/users/sessions",
    registrations: "api/v1/users/registrations"
  }
end

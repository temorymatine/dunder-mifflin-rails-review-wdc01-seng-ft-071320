Rails.application.routes.draw do
  

  get "/", to: "application#homepage"

  # get 'employees/:id/edit', to: 'employees#edit', as: :edit_employee

  resources :dogs 
  resources :employees
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

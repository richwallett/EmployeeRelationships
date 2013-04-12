Empdb::Application.routes.draw do
  root :to => "teams#path"
  resources :employees
  resources :teams
  resources :employee_profiles
  resources :employees do 
  	resources :employee_profile
  end
end

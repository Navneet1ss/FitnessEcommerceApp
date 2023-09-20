Rails.application.routes.draw do
  devise_for :users  do
     get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
  get 'monthly_workoutes/index'

  resources :daily_workouts

 

  get '/daily_workouts/monthly' => 'daily_workouts#monthly'
  
  get 'home/home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "home#home"
end

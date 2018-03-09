Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    #register page
  post 'users/register' => 'user#register'
  get 'users/register' => 'user#register'
  post 'users/skip_to_login' => 'user#skip_to_login'
  get 'users/skip_to_login' => 'user#skip_to_login'

    #login page
  post 'users/login' => 'user#login'
  get 'users/login' => 'user#login'

    #campaign home page
  post 'users/new_day' => 'user#new_day'
  get 'users/new_day' => 'user#new_day'

    #new day page
  post 'users/create_new_day' => 'user#create_new_day'
  get 'users/create_new_day' => 'user#create_new_day'

    #index or whatever
  root 'user#start'



end

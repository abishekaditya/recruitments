Rails.application.routes.draw do

  root 'users#new'

 # get 'selections/design'
 # get 'selections/management'
 # get 'selections/technical'

  get '/signup' => 'users#new'

 # get '/login' => 'sessions#new'
 # post '/login' => 'sessions#create'

#  get '/logout' => 'sessions#destroy'

#  post '/users' => 'users#create'

#  get '/selections' => 'selections#base'

#  post '/selections/man_post' => 'selections#man_post'

#  post '/selections/des_post' => 'selections#des_post'

#  post '/selections/tech_post' => 'selections#tech_post'

end

Rails.application.routes.draw do

  root 'users#new'

  get 'selections/design'
  get 'selections/management'
  get 'selections/technical'

  get '/signup' => 'users#new'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'

  get '/logout' => 'sessions#destroy'

  post '/users' => 'users#create'

  get '/selections' => 'selections#base'

  post '/selections/man_post' => 'selections#man_post'

  post '/selections/design' => 'selections#design'

  post '/selections/technical' => 'selections#technical'

end

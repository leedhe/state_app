Rails.application.routes.draw do
  # Routes for the State resource:
  # CREATE
  get '/new_state' => 'states#new'
  get '/create_state' => 'states#create'

  # READ
  get '/states' => 'states#index'
  get '/states/:id' => 'states#show'

  # UPDATE
  get '/states/:id/edit' => 'states#edit'
  get '/states/:id/update' => 'states#update'

  # DELETE
  get '/states/:id/destroy' => 'states#destroy'
  
  # MISC
  get '/search_states' => 'states#search_states'
  #------------------------------
  get '/' => 'states#search_states'
  get '/home' => 'application#home'
end

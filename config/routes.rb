Rails.application.routes.draw do
  # get 'courses/index'
  # get 'courses/create'
  # get 'courses/edit'
  # get 'courses/destroy'
  # get 'cohorts/index'
  # get 'cohorts/create'
  # get 'cohorts/edit'
  # get 'cohorts/destroy'
  
  # cohorts__________
  root to: 'cohorts#index'
  post '/cohorts' => 'cohorts#create'
  get '/cohorts/:id' => 'cohorts#destroy'
  get '/cohorts' =>'cohorts#index'

# courses___________
  get '/courses' =>'courses#index'
  post '/courses' => 'courses#create'
  get '/courses/:id' => 'courses#destroy'


  # students__________
  get '/students' =>'students#index'



  # teachers__________
  get '/teachers' =>'teachers#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 

  
end

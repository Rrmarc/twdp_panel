Rails.application.routes.draw do
  get 'students/index'
  get 'students/create'
  get 'students/edit'
  get 'students/update'
  get 'students/destroy'
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
  get '/cohorts' =>'cohorts#index'
  post '/cohorts' => 'cohorts#create'
  get '/cohorts/:id' => 'cohorts#destroy'
  get '/cohorts/:id/edit' =>'cohorts#edit', as: :edit_cohort
  post '/cohorts/:id/edit' => 'cohorts#index' 
  
  patch '/cohorts/:id/edit' => 'cohorts#update' 


# courses___________
  get '/courses' =>'courses#index'
  post '/courses' => 'courses#create'
  get '/courses/:id' => 'courses#destroy'


  # students__________
  get '/students' =>'students#index'
  post '/students' => 'students#create'
  get '/students/:id' => 'students#destroy'



  # teachers__________
  get '/teachers' =>'teachers#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 

  
end

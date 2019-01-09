Rails.application.routes.draw do
  # get 'cohorts/index'
  # get 'cohorts/create'
  # get 'cohorts/edit'
  # get 'cohorts/destroy'
  
  root to: 'cohorts#index'
  get '/cohorts' =>'cohorts#index'
  get '/courses' =>'courses#index'
  get '/students' =>'students#index'
  get '/teachers' =>'teachers#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 

  
end

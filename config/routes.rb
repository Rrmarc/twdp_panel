Rails.application.routes.draw do
  resources :passwords, controller: "clearance/passwords", only: [:create, :new]
  resource :session, controller: "clearance/sessions", only: [:create]

  resources :users, controller: "users", only: [:create] do
    resource :password,
      controller: "clearance/passwords",
      only: [:create, :edit, :update]
  end

  get "/sign_in" => "clearance/sessions#new", as: "sign_in"
  delete "/sign_out" => "clearance/sessions#destroy", as: "sign_out"
  get "/sign_up" => "clearance/users#new", as: "sign_up"
  

  
  # cohorts__________
  root to: 'cohorts#index'
  get '/cohorts' =>'cohorts#index'
  post '/cohorts' => 'cohorts#create'
  get '/cohorts/:id' => 'cohorts#destroy'
  get '/cohorts/:id/edit' =>'cohorts#edit'
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
  post '/teachers' => 'teachers#create'
  get '/teachers/:id' => 'teachers#destroy'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 
  

  
end

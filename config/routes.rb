Hondo::Application.routes.draw do
  match "/users/sign_up" => redirect {|p,s| "/request-an-invite/ "}, :via => :get
  match "/request-an-invite", :to => "interests#new", :via => :get
  match "/request-an-invite/thank-you/(:email)", :to => "interests#thanks", :via => :get
  devise_for :users
  root :to => "home#index"
  resources :interests, :only => [:create, :new]

  devise_scope :user do
    match "/login", :to => "devise/sessions#new", :via => :get
  end
  
end

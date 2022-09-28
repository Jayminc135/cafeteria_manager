Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :users
  resources :sessions
  resources :menucategories
  resources :menuitems
  resources :addtocart
  resources :getcart
  resources :updatequantity
  resources :addorder
  resources :addorderitem
  resources :clearcart
  resources :getorders
  resources :getorderitems
  resources :changeorderstatus
  resources :getuser
  resources :addmenucategory
  resources :addmenuitem
  resources :addfeedback
  resources :getorder
end

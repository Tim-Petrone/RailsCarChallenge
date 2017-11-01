Rails.application.routes.draw do
  get 'cars/create' => 'cars#create'

  get 'cars/status' => 'cars#status'

  # get 'cars/accelerate'=> 'cars#accelerate'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

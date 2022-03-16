Rails.application.routes.draw do
  resources :birds, only: [:index, :show, :create, :update]

  #custom routes: all the frontend has to do is send a request to our new custom route, without worrying about sending any data in the body of the request.
  patch "/birds/:id/like", to: "birds#increment_likes"
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope :api do
    get  '/whoami' => 'application#whoami'
    post '/search' => 'identity_services#search'
  end
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/greeter' => 'home#greeter'
  get '/programmer' => 'home#programmer'
  get '/beverage/:number1/:number2' => 'home#beverage'
  get '/tacos' => 'home#tacos'
  get '/' => 'home#landing'

  root to: 'home#landing'
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/tacos/:my_taco' => 'main#tacos'
  get '/numbers/:num1/:num2' => 'main#numbers'
end

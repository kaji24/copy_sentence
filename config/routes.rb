Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/sentence" => "copy#sentence"
  post "/decide" => "copy#decide"
end
Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/" => "home#top"
  get "player/:id/index" => "player#index"
  post "player/:id/create" => "player#create"
  get "signup"=>"user#signup"
  post "signup/create" => "user#create"
  post "login" => "user#login"
  get "login"=>"user#login_form"
  get "mypage" => "user#mypage"
  post "logout" => "user#logout"
end

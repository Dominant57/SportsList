Rails.application.routes.draw do
  get 'team/new'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/" => "home#top"
  get "signup"=>"user#signup"
  post "signup/create" => "user#create"
  post "login" => "user#login"
  get "login"=>"user#login_form"
  get "mypage" => "user#mypage"
  post "logout" => "user#logout"
  get "player/:id/index" => "player#index"
  post "player/:id/create" => "player#create"
  post "likes/:id/:post_id/create"=> "likes#create"
  post "likes/:id/:post_id/destroy" => "likes#destroy"
  get "team/:team_id/new" => "team#new"
end

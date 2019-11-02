Rails.application.routes.draw do
  resources :meetings
  devise_for :users
  root 'static_pages#index'
  mount TalkingStick::Engine, at: '/talking_stick'
end

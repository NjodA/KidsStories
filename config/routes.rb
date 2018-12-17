Rails.application.routes.draw do
resources :stories , :quizzes , :questions , :stickers
  devise_for :users
  get "/stories/levels/:level", to: "stories#index"
  root "pages#home"
end

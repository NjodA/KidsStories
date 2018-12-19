Rails.application.routes.draw do
  resources :stories , :quizzes , :questions , :stickers ,:pages
  post "/quizzes/:id/complete", to: "quizzes#complete"
  get "/readings/:id/finish", to: "stories#finish"
  devise_for :users
  resources :users, only: [:show]
  get "/stories/levels/:level", to: "stories#index"
  root "pages#home"
end

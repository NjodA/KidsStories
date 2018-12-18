Rails.application.routes.draw do
  resources :stories , :quizzes , :questions , :stickers
  post "/quizzes/:id/complete", to: "quizzes#complete"
  devise_for :users
  get "/stories/levels/:level", to: "stories#index"
  root "pages#home"
end

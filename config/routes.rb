Rails.application.routes.draw do
  resources :questions, only: [:index] do
    collection { get :score,   to: 'questions#score' }
    collection { post :answer, to: 'questions#answer' }
  end
  root 'welcome#index'
end

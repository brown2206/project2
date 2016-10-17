Rails.application.routes.draw do
  root to: "tips#index"
  resources :tips do
    resources :suspects
  end
end

Rails.application.routes.draw do
  root to: "tips#index"
  resources :tips do
    resources :supects
  end
end

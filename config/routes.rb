Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :seasons, only: %i[index show]
    end
  end
end

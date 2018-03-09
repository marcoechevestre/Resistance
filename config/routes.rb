Rails.application.routes.draw do
  resources :survivors do
    resources :inventories
  end
end


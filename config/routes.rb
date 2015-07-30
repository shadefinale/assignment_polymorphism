Rails.application.routes.draw do

  resources :stadia do
    resources :bands, :defaults => {:location => "Stadium"}
  end

  resources :restaurants do
    resources :bands, :defaults => {:location => "Restaurant"}
  end
end

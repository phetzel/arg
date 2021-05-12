Rails.application.routes.draw do
     root "static_pages#root"

     namespace :api, defaults: { format: :json } do 
          resources :emails, only: [:create, :destroy]
          match "emails/unsubscribe/:unsubscribe_hash" => "emails#unsubscribe", as: "unsubscribe", via: :all
     end 
end

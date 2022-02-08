Rails.application.routes.draw do
  root "articles#index"

  resources :articles do 
    collection do
      patch :like
      post :updateArticles #post send info to server
  end
end
  resources :test do 
    member do 
      patch :dislike
    end
  end
  

 # collection do
 #     patch :deleteTest
 #   end
 # end
  #, :controller => :test, :as => :test
 # patch "test#test", to "books#test"
  #get "/articles", to: "articles#index"
  #get "/articles/:id", to: "articles#show"

  #get "/test", to: "test#test"
  #get "/test/:id", to: "test#showTest"
end


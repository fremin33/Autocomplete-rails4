Rails.application.routes.draw do
   root to: 'articles#index'
   resources :articles do
     get :autocomplete_article_title, :on => :collection
   end
end

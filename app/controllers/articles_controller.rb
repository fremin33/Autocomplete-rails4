class ArticlesController < ApplicationController
   autocomplete :article, :title, :full => true
   def index
     if params[:search].blank?
       @articles = Article.all
     else
       @articles = Article.where(title: params[:search])
     end
   end
end

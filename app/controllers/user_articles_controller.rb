class UserArticlesController < ApplicationController

    def index
    
        user_article = UserArticle.all

        render json: user_article, only: [:id, :url, :abstract, :byline, :title, :multimedia, :user_id]
    end


    def create
       user_article = UserArticle.create!(url:params[:url], abstract:params[:abstract], 
        byline: params[:byline], title:params[:title], multimedia: params[:multimedia],
        user_id:params[:user_id])

        render json: user_article, only: [:url, :abstract, :byline, :title, :multimedia, :user_id]
    end

    
        def destroy
            @article = UserArticle.find(params[:id])
            
            @article.destroy
          end


end

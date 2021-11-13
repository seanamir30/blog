class ArticlesController < ApplicationController
    def index
        @article = Article.all
    end
        
    def new
        @article = Article.new
    end
        
    def create
        @article = Article.new(article_params)

        if@article.save
            redirect_to articles_path
        else
            render :new
        end
    end
        
    def edit

    end
        
    def update

    end
        
    def delete

    end

    private
    
    def article_params
        params.require(:article).permit(:name, :body)
    end
end

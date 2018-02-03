class ArticlesController < ApplicationController
    def index
        @articles = Article.all
    end

    def show
        @article = Article.find(params[:id])
    end

    def edit
        @article = Article.find(params[:id])
    end

    def update
        @article = Article.find(params[:id])
        if @article.update(article_params)
            redirect_to @article
        else
            render 'edit'
        end
    end

    def new
        @article = Article.new
        
    end

    def create
        @article = Article.new(article_params.merge(user_id: current_user.id))
        if @article.save
        redirect_to @article, notice: "L'article a bien été publié"
        else
            render 'new'
        end
    end

    def destroy
        @article = Article.find(params[:id])
        @article.destroy

        redirect_to articles_path, notice: "L'article a bien été supprimé"
    end

    private
        def article_params
            params.require(:article).permit(:title, :published, :user_id, :heading, :image)
        end
end

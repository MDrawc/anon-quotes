class ArticlesController < ApplicationController
  def index
    @allarticles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:notice] = "Quote was successfully added. Look for it below. :) "
      redirect_to root_path
    else
      render 'new'
    end
  end

  private
    def article_params
      params.require(:article).permit(:quote)
    end
end

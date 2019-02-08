class CommentsController < ApplicationController
  def index
    @article = Article.find(params[:article_id])
    redirect_to article_path(@article)
  end

  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    if @comment.save
      flash[:notice] = "Comment was successfully added :)"
      redirect_to article_path(@article)
    else
      render "articles/show"
    end
  end

private
  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end

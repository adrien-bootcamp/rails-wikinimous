class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  def show
    @article = Article.find(params[:id])
  end
  def new
    @article = Article.new
  end
  def create
    @article = Article.new(artcile_params)
    @article.save

    redirect_to articles_path
  end
  def edit
  end
  def update
  end
  def destroy
  end

  private

  def artcile_params
    params.require(:article).permit(:title, :content)
  end
end

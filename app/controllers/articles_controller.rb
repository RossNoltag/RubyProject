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
    @article= Article.new(title:"...",body:"...")
    if @article.save
      redirect_to @article
    else
      reder :new,status: uprocessable_entity
    end
  end

  def edit
    @article = Article.find(params[:id])#used for when building the form
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else 
      render :edit, status: uprocessable_entity
    end
  end

  private
  def article_params
    params.require(:article).permit(:title, :body)
  end

end

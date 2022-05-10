class ArticlesController < ApplicationController
  before_action :set, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def new
  end

  def show
  end

  def edit
  end

  private

  def set
    @article = Article.find(params[:id])
  end
end

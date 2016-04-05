class ArticlesController < ApplicationController
  # before_action :set_feed, only: :index
  layout "application"

  def index
    @articles = Article.order('published_date ASC')
    @article_active = 1
  end

  def show
    @article = Article.find(params[:id])
    @article_active = 1
  end

  # private
  # def set_feed
  #   @feed = Feed.find(params[:id])
  # end
end

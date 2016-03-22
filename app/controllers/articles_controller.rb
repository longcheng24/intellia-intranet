class ArticlesController < ApplicationController
  # before_action :set_feed, only: :index

  def index
    @articles = Article.order('published_date desc')


  end

  def show
    @article = Article.find(params[:id])
  end

  # private
  # def set_feed
  #   @feed = Feed.find(params[:id])
  # end
end

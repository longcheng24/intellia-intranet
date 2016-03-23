class Api::V1::JsonController < ApplicationController
  def users
    @users = User.all
  end
  def show
    @user = User.find(params[:id])
  end

  def articles
    @articles = Article.all
  end
end

class Api::V1::JsonController < ApplicationController
  def users
    @users = User.all
  end

  def articles
    @articles = Article.all
  end
end

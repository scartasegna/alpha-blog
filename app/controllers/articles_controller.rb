class ArticlesController < ApplicationController
  #before_action :set_article, only: %i[ show edit update destroy ]

  # GET /articles/1 or /articles/1.json
  def show
     @article = Article.find(params[:id])
  end

  
end

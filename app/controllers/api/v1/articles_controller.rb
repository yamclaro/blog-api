class Api::V1::ArticlesController < ApplicationController
  before_action :set_api_v1_article, only: %i[ show update destroy ]

  # GET /api/v1/articles
  def index
    @api_v1_articles = Api::V1::Article.all

    render json: @api_v1_articles
  end

  # GET /api/v1/articles/1
  def show
    render json: @api_v1_article
  end

  # POST /api/v1/articles
  def create
    @api_v1_article = Api::V1::Article.new(api_v1_article_params)

    if @api_v1_article.save
      render json: @api_v1_article, status: :created, location: @api_v1_article
    else
      render json: @api_v1_article.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/articles/1
  def update
    if @api_v1_article.update(api_v1_article_params)
      render json: @api_v1_article
    else
      render json: @api_v1_article.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/articles/1
  def destroy
    @api_v1_article.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_article
      @api_v1_article = Api::V1::Article.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_v1_article_params
      params.fetch(:api_v1_article, {})
    end
end

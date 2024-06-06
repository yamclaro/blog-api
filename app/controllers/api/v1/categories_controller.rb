class Api::V1::CategoriesController < ApplicationController
  before_action :set_api_v1_category, only: %i[ show update destroy ]

  # GET /api/v1/categories
  def index
    @api_v1_categories = Api::V1::Category.all

    render json: @api_v1_categories
  end

  # GET /api/v1/categories/1
  def show
    render json: @api_v1_category
  end

  # POST /api/v1/categories
  def create
    @api_v1_category = Api::V1::Category.new(api_v1_category_params)

    if @api_v1_category.save
      render json: @api_v1_category, status: :created, location: @api_v1_category
    else
      render json: @api_v1_category.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/categories/1
  def update
    if @api_v1_category.update(api_v1_category_params)
      render json: @api_v1_category
    else
      render json: @api_v1_category.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/categories/1
  def destroy
    @api_v1_category.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_category
      @api_v1_category = Api::V1::Category.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_v1_category_params
      params.fetch(:api_v1_category, {})
    end
end

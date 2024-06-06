require "test_helper"

class Api::V1::CategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_category = api_v1_categories(:one)
  end

  test "should get index" do
    get api_v1_categories_url, as: :json
    assert_response :success
  end

  test "should create api_v1_category" do
    assert_difference("Api::V1::Category.count") do
      post api_v1_categories_url, params: { api_v1_category: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show api_v1_category" do
    get api_v1_category_url(@api_v1_category), as: :json
    assert_response :success
  end

  test "should update api_v1_category" do
    patch api_v1_category_url(@api_v1_category), params: { api_v1_category: {  } }, as: :json
    assert_response :success
  end

  test "should destroy api_v1_category" do
    assert_difference("Api::V1::Category.count", -1) do
      delete api_v1_category_url(@api_v1_category), as: :json
    end

    assert_response :no_content
  end
end

require 'test_helper'

class CredibilityRatingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @credibility_rating = credibility_ratings(:one)
  end

  test "should get index" do
    get credibility_ratings_url
    assert_response :success
  end

  test "should get new" do
    get new_credibility_rating_url
    assert_response :success
  end

  test "should create credibility_rating" do
    assert_difference('CredibilityRating.count') do
      post credibility_ratings_url, params: { credibility_rating: { credibility_level: @credibility_rating.credibility_level, insertTime: @credibility_rating.insertTime, rater: @credibility_rating.rater, reason: @credibility_rating.reason } }
    end

    assert_redirected_to credibility_rating_url(CredibilityRating.last)
  end

  test "should show credibility_rating" do
    get credibility_rating_url(@credibility_rating)
    assert_response :success
  end

  test "should get edit" do
    get edit_credibility_rating_url(@credibility_rating)
    assert_response :success
  end

  test "should update credibility_rating" do
    patch credibility_rating_url(@credibility_rating), params: { credibility_rating: { credibility_level: @credibility_rating.credibility_level, insertTime: @credibility_rating.insertTime, rater: @credibility_rating.rater, reason: @credibility_rating.reason } }
    assert_redirected_to credibility_rating_url(@credibility_rating)
  end

  test "should destroy credibility_rating" do
    assert_difference('CredibilityRating.count', -1) do
      delete credibility_rating_url(@credibility_rating)
    end

    assert_redirected_to credibility_ratings_url
  end
end

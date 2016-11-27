require 'test_helper'

class ConfidenceRatingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @confidence_rating = confidence_ratings(:one)
  end

  test "should get index" do
    get confidence_ratings_url
    assert_response :success
  end

  test "should get new" do
    get new_confidence_rating_url
    assert_response :success
  end

  test "should create confidence_rating" do
    assert_difference('ConfidenceRating.count') do
      post confidence_ratings_url, params: { confidence_rating: { confidence_level: @confidence_rating.confidence_level, insertTime: @confidence_rating.insertTime, rater: @confidence_rating.rater, reason: @confidence_rating.reason } }
    end

    assert_redirected_to confidence_rating_url(ConfidenceRating.last)
  end

  test "should show confidence_rating" do
    get confidence_rating_url(@confidence_rating)
    assert_response :success
  end

  test "should get edit" do
    get edit_confidence_rating_url(@confidence_rating)
    assert_response :success
  end

  test "should update confidence_rating" do
    patch confidence_rating_url(@confidence_rating), params: { confidence_rating: { confidence_level: @confidence_rating.confidence_level, insertTime: @confidence_rating.insertTime, rater: @confidence_rating.rater, reason: @confidence_rating.reason } }
    assert_redirected_to confidence_rating_url(@confidence_rating)
  end

  test "should destroy confidence_rating" do
    assert_difference('ConfidenceRating.count', -1) do
      delete confidence_rating_url(@confidence_rating)
    end

    assert_redirected_to confidence_ratings_url
  end
end

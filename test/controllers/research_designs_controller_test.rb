require 'test_helper'

class ResearchDesignsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @research_design = research_designs(:one)
  end

  test "should get index" do
    get research_designs_url
    assert_response :success
  end

  test "should get new" do
    get new_research_design_url
    assert_response :success
  end

  test "should create research_design" do
    assert_difference('ResearchDesign.count') do
      post research_designs_url, params: { research_design: { insertTime: @research_design.insertTime, method: @research_design.method, metrics: @research_design.metrics, participants: @research_design.participants, question: @research_design.question } }
    end

    assert_redirected_to research_design_url(ResearchDesign.last)
  end

  test "should show research_design" do
    get research_design_url(@research_design)
    assert_response :success
  end

  test "should get edit" do
    get edit_research_design_url(@research_design)
    assert_response :success
  end

  test "should update research_design" do
    patch research_design_url(@research_design), params: { research_design: { insertTime: @research_design.insertTime, method: @research_design.method, metrics: @research_design.metrics, participants: @research_design.participants, question: @research_design.question } }
    assert_redirected_to research_design_url(@research_design)
  end

  test "should destroy research_design" do
    assert_difference('ResearchDesign.count', -1) do
      delete research_design_url(@research_design)
    end

    assert_redirected_to research_designs_url
  end
end

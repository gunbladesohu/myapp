require 'test_helper'

class EvidenceSourcesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @evidence_source = evidence_sources(:one)
  end

  test "should get index" do
    get evidence_sources_url
    assert_response :success
  end

  test "should get new" do
    get new_evidence_source_url
    assert_response :success
  end

  test "should create evidence_source" do
    assert_difference('EvidenceSource.count') do
      post evidence_sources_url, params: { evidence_source: { bib_ref: @evidence_source.bib_ref, insertTime: @evidence_source.insertTime, research_level: @evidence_source.research_level } }
    end

    assert_redirected_to evidence_source_url(EvidenceSource.last)
  end

  test "should show evidence_source" do
    get evidence_source_url(@evidence_source)
    assert_response :success
  end

  test "should get edit" do
    get edit_evidence_source_url(@evidence_source)
    assert_response :success
  end

  test "should update evidence_source" do
    patch evidence_source_url(@evidence_source), params: { evidence_source: { bib_ref: @evidence_source.bib_ref, insertTime: @evidence_source.insertTime, research_level: @evidence_source.research_level } }
    assert_redirected_to evidence_source_url(@evidence_source)
  end

  test "should destroy evidence_source" do
    assert_difference('EvidenceSource.count', -1) do
      delete evidence_source_url(@evidence_source)
    end

    assert_redirected_to evidence_sources_url
  end
end

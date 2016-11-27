require 'test_helper'

class EvidenceItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @evidence_item = evidence_items(:one)
  end

  test "should get index" do
    get evidence_items_url
    assert_response :success
  end

  test "should get new" do
    get new_evidence_item_url
    assert_response :success
  end

  test "should create evidence_item" do
    assert_difference('EvidenceItem.count') do
      post evidence_items_url, params: { evidence_item: { benefit: @evidence_item.benefit, context_how: @evidence_item.context_how, context_what: @evidence_item.context_what, context_when: @evidence_item.context_when, context_where: @evidence_item.context_where, context_who: @evidence_item.context_who, context_why: @evidence_item.context_why, insertTime: @evidence_item.insertTime, result: @evidence_item.result } }
    end

    assert_redirected_to evidence_item_url(EvidenceItem.last)
  end

  test "should show evidence_item" do
    get evidence_item_url(@evidence_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_evidence_item_url(@evidence_item)
    assert_response :success
  end

  test "should update evidence_item" do
    patch evidence_item_url(@evidence_item), params: { evidence_item: { benefit: @evidence_item.benefit, context_how: @evidence_item.context_how, context_what: @evidence_item.context_what, context_when: @evidence_item.context_when, context_where: @evidence_item.context_where, context_who: @evidence_item.context_who, context_why: @evidence_item.context_why, insertTime: @evidence_item.insertTime, result: @evidence_item.result } }
    assert_redirected_to evidence_item_url(@evidence_item)
  end

  test "should destroy evidence_item" do
    assert_difference('EvidenceItem.count', -1) do
      delete evidence_item_url(@evidence_item)
    end

    assert_redirected_to evidence_items_url
  end
end

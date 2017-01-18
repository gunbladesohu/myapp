class SearchController < ApplicationController
  def index
    @search = EvidenceItem.search(params[:q])
    @products = @search.result
    @search.build_condition if @search.conditions.empty?
    @search.build_sort if @search.sorts.empty?
  end
end

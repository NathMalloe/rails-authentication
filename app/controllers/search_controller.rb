class SearchController < ApplicationController
  def index
    @results = AlgoliaSearch.search(params[:q])
  end
end

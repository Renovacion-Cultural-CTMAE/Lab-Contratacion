class SearchController < ApplicationController
  def index
      @q = Contractor.ransack(params[:q])
      @contractors = @query.result(distinct: true)
    end
end

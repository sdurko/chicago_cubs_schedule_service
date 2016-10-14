class SearchController < ApplicationController

  def retrieve
    render json: Schedule.all
  end


end

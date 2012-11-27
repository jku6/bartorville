class SearchController < ApplicationController

	def index
    @results = User.search(params[:search])
  end
end
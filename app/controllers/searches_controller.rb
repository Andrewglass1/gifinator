class SearchesController < ApplicationController
	def new
		@search = Search.new
	end

	def create
		@search = Search.create(params[:search])
		redirect_to search_path(@search)
	end

	def show
		@search = Search.find(params[:id])
	end
end

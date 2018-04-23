class BlogController < ApplicationController
	def index
		@blogs = Article.all
	end
	def single
        @blog = Article.find(params[:id])
    end
end

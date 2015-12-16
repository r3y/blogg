class PostsController < ApplicationController
	def show
    @posts = Posts.find(params[:id])
  end

	def new
  	end

  	def create
  		
  		@posts = Posts.new(posts_params)
 
		@posts.save
		redirect_to @posts
    end

private
  def posts_params
    params.require(:posts).permit(:title, :text)
  end

end

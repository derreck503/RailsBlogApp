class PostsController < ApplicationController
    def index
        @posts = Post.all
    end 

    def show
        @post = Post.find(params[:id])
    end

    def new
    end
    
    def create 
        # render plain: params[:post].inspect

        # Post is the model class
        # post = Post.new(params[:post]) This is forbiden because parameters must be specified
        @post = Post.new(post_params)

        @post.save
        redirect_to @post
    end

    # Define input parameters
    private def post_params
        params.require(:post).permit(:title, :body)
    end
    
end

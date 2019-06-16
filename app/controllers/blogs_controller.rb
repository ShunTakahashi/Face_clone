class BlogsController < ApplicationController

  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(params[:content])
    if @blog.save
      redirect_to blogs_path,notice:"投稿が完了しました。"
    else
      render 'new'
    end
  end
end

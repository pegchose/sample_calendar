class BlogsController < ApplicationController
  before_action :set_params
  def index
    render layout: '_calendar'
    @blogs = Blog.all
  end

  def new 
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    redirect_to 'index'
  end

  def edit
  end

  def show
  end

  private
  def set_params
    @blog = Blog.find(params[:id])
  end

  def blog_params
    params.require(:blog).permit(:content)
  end
end

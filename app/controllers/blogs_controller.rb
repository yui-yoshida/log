class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]
  before_action :loggin_check, only: [:new, :edit, :show, :destroy, :index]


  def new
    if params[:back]
      @blog = Blog.new(blog_params)
    else
      @blog = Blog.new
    end
  end

  def create
    @blog = Blog.new(blog_params)
    @blog.user_id = current_user.id
    if @blog.save
      ContactMailer.contact_mail(@blog).deliver
      redirect_to blogs_path, notice: "Smileを作成しました"
    else
      render "new"
    end
  end

  def index
    @blogs = Blog.all
  end

  def show
    @favorite = current_user.favorites.find_by(blog_id: @blog.id)
  end

  def edit
  end

  def update
    if @blog.update(blog_params)
      redirect_to blogs_path, notice: "Smileを編集しました！"
    else
      render "edit"
    end
  end

  def destroy
    @blog.destroy
    redirect_to blogs_path, notice:"Smileを削除しました"
  end

  def confirm
    @blog = Blog.new(blog_params)
    @blog.user_id = current_user.id
    render :new if @blog.invalid?
  end

  private

  def blog_params
    params.require(:blog).permit(:content, :image, :image_cache)
  end

  def set_blog
    @blog = Blog.find(params[:id])
  end

  def loggin_check
    if session[:user_id] == nil
      redirect_to new_session_path, notice:"ログインしてください"
    end
  end
end

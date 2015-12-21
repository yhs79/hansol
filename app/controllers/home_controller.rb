class HomeController < ApplicationController
before_action :authenticate_admin!
  def delete
  	@i=Post.find(params[:id])
  	if @i.user_password==params[:search_password]
  	@i.destroy
  	redirect_to "/home/showall"
  	else
  	redirect_to "/home/fault"
 	  end
  end

  def index
    session[:ex]=4
  end

  def read
    session[:ex]=1
  end

  def search 
  	@i=Post.find(params[:id])
  end

  def showall
  	@posts=Post.all
    session[:ex]=0
  end

  def show1
    @i=Post.find(params[:id])
  end

  def write
  	@post=Post.new
  	if params[:input_password]==""
    redirect_to "/home/read"
  	else 
    @post.user_title=params[:input_title]
  	@post.user_name=params[:input_name]
  	@post.user_password=params[:input_password]
  	@post.user_content=params[:input_content]
  	@post.user_img=params[:input_img]
    @post.user_email=params[:input_email]
    @post.user_date=params[:input_date]
  	@post.save
  	redirect_to "/home/showall"
 	  end
  end

  def fault
  end

  def modify
  	@i=Post.find(params[:id])
    @i.user_title=params[:modify_title]
  	@i.user_name=params[:modify_name]
  	@i.user_content=params[:modify_content]
  	@i.user_img=params[:modify_img]
  	@i.save
  	redirect_to "/home/showall"
  end

  def search_1
  	@i=Post.find(params[:id])
  end

end


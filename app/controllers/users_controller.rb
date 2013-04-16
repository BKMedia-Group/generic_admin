class UsersController < ApplicationController
  include SessionsHelper

  before_filter :is_admin

  def index
    @users = User.all
  end
  def show
    @user = User.find params[:id]
  end
  def new
    @user = User.new
  end
  def create
    @user = User.new params[:user]
    if @user.save
      flash[:success] = "User created"
      redirect_to users_path
    else
      render :new
    end
  end
  def edit
    @user = User.find params[:id]
  end
  def update
    @user = User.find params[:id]
    if @user.update_attributes params[:user]
      flash[:success] = "User updated"
      redirect_to users_path
    else
      render :edit
    end
  end
  def destroy
    User.destroy params[:id]
    flash[:success] = "User destroyed"
    redirect_to users_path
  end

  private
    def is_admin
      redirect_to root_path, error: "You are not authorized to do that" unless current_user.admin
    end
end

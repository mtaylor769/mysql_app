class UsersController < ApplicationController
  def new
    @user = User.new
    @title = "Create an Account"
  end

  def show
    @user = User.find(params[:id])
    @title = @user.name + "'s Profile"
  end

  def edit
    @title = "Edit Profile"
  end

  def delete
    @title = "Delete Profile"
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Welcome to Rock'n'Swap!"
      redirect_to @user
    else
      @title = "Create an Account"
      render 'new'
    end
  end
end

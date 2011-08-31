class UsersController < ApplicationController
  def new
    @title = "Create an Account"
  end

  def show
    @user = User.find(params[:id])
    @title = @user.name
  end

  def edit
  end

  def delete
  end

end

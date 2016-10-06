class SessionsController < ApplicationController
  
  def new
  end
  
  def create
    @user = User.find_by(name: params[:user][:name])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user), notice: "Welcome back to the theme park!"
    else
      render 'new'
    end
  end

  def destroy
    session.destroy
    redirect_to root_path
  end

end

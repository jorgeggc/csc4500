class SessionsController < ApplicationController
  def new
  end

  def create
    login_user = params[:logintype]

    if login_user == "chef"
      chef = Chef.find_by_email(params[:email])
      if chef && chef.authenticate(params[:password])
        session[:chef_id] = chef.id
        redirect_to chef_home_path, notice: "Logged in!"
      else
        flash.now[:alert] = "Email or password is invalid for chef"
        render "new"
      end

    elsif login_user == "customer"
      user = User.find_by_email(params[:email])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to home_path, notice: "Logged in!"
      else
        flash.now[:alert] = "Email or password is invalid for customer"
        render "new"
      end

    elsif login_user == "admin"
      admin = Admin.find_by_email(params[:email])
      if admin && admin.authenticate(params[:password])
        redirect_to admin_home_path, notice: "Logged in!"
      else
        flash.now[:alert] = "Email or password is invalid for admin"
        render "new"
      end
    end
  end

  def destroy
    session[:user_id] = nil
    session[:chef_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end
end
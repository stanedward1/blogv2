class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:login][:email].downcase)

    if user && user.authenticate(params[:login][:password])
      session[:user_id] = user.id.to_s
      redirect_to admin_root_url,notice: 'Successfully logged in!'
    else
      flash.now.alert = "邮箱或密码错误，请重试"
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_path, notice: "Logged out!"
  end
end

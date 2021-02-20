class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    @user.email.downcase!

    if @user.save
      flash[:notice] = "账号成功创建!"
      redirect_to root_path
    else
      flash.now.alert = "创建账户失败，请检查邮箱及密码并再次尝试！"
      render :new

    end
  end

  private
  def user_params
    # strong parameters - whitelist of allowed fields #=> permit(:name, :email, ...)
    # that can be submitted by a form to the user model #=> require(:user)
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end

class DashboardsController < ApplicationController
  def landing_page
    @current_user = check_current_user(current_user)
    puts "Current user is: #{@current_user}"
  end

  def buy_page
  end

  def admin_page
    @current_user = check_current_user
    if current_user.admin == true
      @users = User.all
      UserLogger.instance.log_user_info(@current_user)
    else
      redirect_to root_path, notice: "You are not an admin"
    end
  end

  def make_current_user_admin
    # Make the current user an admin
    current_user.admin = true
    current_user.save
    redirect_to root_path, notice: "You are now an admin"
  end

  def make_user_admin(user)
    user.admin = true
    user.save
    redirect_to dashboard_admin_page_path, notice: "You are now an admin"
  end

  def check_current_user(current_user=nil)
    if current_user == nil
      @current_user = ""
      return current_user
    else
      return @current_user = current_user 
    end
  end
end

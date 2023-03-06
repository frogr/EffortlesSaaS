class DashboardsController < ApplicationController
  def landing_page
    @current_user = check_current_user
  end

  def buy_page
  end

  def make_admin
    # Make the current user an admin
    current_user.admin = true
    current_user.save
    redirect_to root_path, notice: "You are now an admin"
  end

  def check_current_user
    if current_user == nil
      return current_user = ""
    else
      return current_user
    end
  end
end

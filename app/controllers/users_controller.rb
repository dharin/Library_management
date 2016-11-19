class UsersController < ApplicationController
  layout "admin_layout"

  def dashboard
    @user = User.find(params[:id])
    if @user.is_admin?
      @all_members = User.where('is_admin = false')
    else
      @all_members = User.includes(:role).where('is_admin = false and roles.name = ?','student').references(:role)
    end
  end

  def add_member
    @user = User.new
    @role = Role.find_by_name(params[:role_name])
  end
end

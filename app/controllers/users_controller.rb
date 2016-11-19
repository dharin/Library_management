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

  def edit_member
    @user = User.find(params[:id])
    @role = @user.role
  end

  def submit_member
    @user = User.new(user_params)
    @role = Role.find(params[:user][:role_id]) if params[:user][:role_id].present?
    if @user.save
      redirect_to dashboard_path(current_user.id)
    else
      redirect_to add_member_path(@role.name)
    end
  end

  def update_member
    @user = User.find(params[:id])
    @role = Role.find(params[:user][:role_id]) if params[:user][:role_id].present?
    if @user.update(user_params)
      redirect_to dashboard_path(current_user.id)
    else
      redirect_to edit_member_path(params[:id])
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to dashboard_path(current_user.id)
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :role_id)
  end
end

class UsersController < ApplicationController
  layout "admin_layout"

  def dashboard
    @user = User.find(params[:id])
  end

end

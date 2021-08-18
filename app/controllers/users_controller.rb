class UsersController < ApplicationController
  def show
    @user = current_user
    @user_devs = @user.developers_as_owner
  end
end

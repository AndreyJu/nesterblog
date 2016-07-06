class UserController < ApplicationController
  before_action :current_user
  def show
    @user = current_user
  end
end

class AdminController < ApplicationController
  before_action :authorize_user, only: :index

  def index

    @posts = Post.all
    @users = User.all

    

  end

  private

  def authorize_user
    if current_user.user_type != 'admin'
      redirect_to root_path, notice: 'Access Denied'
    end
  end
end

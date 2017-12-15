class ToppagesController < ApplicationController
  def index
    if logged_in?
      @user = current_user
      @task = current_user.tasks.build  # form_for 用
      @tasks = current_user.tasks.order('created_at DESC').page(params[:page]).page(10)
    end
  end
end

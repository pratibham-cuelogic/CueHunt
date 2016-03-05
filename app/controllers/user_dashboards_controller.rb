class UserDashboardsController < ApplicationController

  def index
    return redirect_to user_dashboard_path
  end

  def dashboard

  end

  def user_set
    @question_sets = current_user.user_sets.last.question_sets
  end

end

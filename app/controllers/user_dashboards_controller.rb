class UserDashboardsController < ApplicationController

  def index
    return redirect_to user_dashboard_path
  end

  def dashboard

  end

  def user_set
    @question_sets = current_user.user_sets.last.question_sets
  end

  def update_answer
    question_set_id = params[:answer].split('-').first
    answer_id = params[:answer].split('-').last
    QuestionSet.where(id: question_set_id).last.update_attributes(answer_id: answer_id)
    render text: true
  end

end

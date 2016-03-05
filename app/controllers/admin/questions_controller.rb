class Admin::QuestionsController < BaseAdminController

  def index
    @questions = Question.paginate(:page => params[:page], :per_page => 10)
  end

end

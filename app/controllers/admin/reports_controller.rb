class Admin::ReportsController < BaseAdminController

  def candidate_reports
    @candidate_reports = UserSet.all
  end

  def index
    #render :nothing => true
    redirect_to :back
  end

end

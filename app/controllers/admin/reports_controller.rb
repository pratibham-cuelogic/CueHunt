class Admin::ReportsController < BaseAdminController

  def candidate_reports
    UserSet.all
  end

end

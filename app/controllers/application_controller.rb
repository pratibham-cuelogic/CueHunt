class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  skip_before_filter :verify_authenticity_token
  before_action :authenticate_user!
  before_action :check_website_access, if: proc { user_signed_in?}


  def check_website_access
    return redirect_to thank_you_path if current_user.status == NO_ACCESS
  end

end

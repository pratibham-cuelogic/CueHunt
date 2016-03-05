class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  skip_before_filter :verify_authenticity_token
  before_action :authenticate_user!, :check_website_access


  def check_website_access
    return redirect_to thank_you_path if current_user.status == NO_ACCESS
  end

end

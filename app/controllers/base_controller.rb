class BaseController < ApplicationController

  skip_before_filter :verify_authenticity_token
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  #include Concerns::ExceptionHandler
  before_action :set_resource, only: [:delete,:update,:edit]
  before_action :set_last_seen_at, if: proc { user_signed_in? && (session[:last_seen_at] == nil || session[:last_seen_at] < 15.minutes.ago) }

end

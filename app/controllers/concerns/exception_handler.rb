module Concerns::ExceptionHandler
  extend ActiveSupport::Concern
  included do
    rescue_from Exception, with: :handle_exception
  end

  def handle_exception(e)
    server_error(e)
    return redirect_to '/alt_404'
  end

  # Send Exception report email to admin
  def server_error(exception)
    UserNotifier.exception_report(
        exception,
        exception.backtrace,
        session.instance_variable_get("@data"),
        params,
        request.env).deliver
  end

end
class AdminNotifier < ActionMailer::Base
  default from: "from@example.com"

  def resend_invitation_email

  end

  # Send report card
  def send_admin_report(current_set)
    @current_set = current_set
    mail(to: 'jitendra.samant@cuelogic.co.in')
  end

end

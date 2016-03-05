class AdminNotifier < ActionMailer::Base
  default from: "from@example.com"

  def resend_invitation_email(user)
    @full_name = user.full_name
    #mail(to: user.email, subject: "Cue hunt online test")
    mail(to: 'jitendra.samant@cuelogic.co.in', subject: "Cue hunt online test")
  end

  # Send report card
  def send_admin_report(current_set)
    @current_set = current_set
    mail(to: current_set.invitee.email, subject: "Report for #{current_set.user.full_name}")
  end

end

class Admin::UsersController < BaseAdminController

  # Send invitation to user
  def send_invitation_to_candidate
    User.send_invitation(params,current_user)
    redirect_to :back
  end

  def resend_invitation
    User.resend_invitation_to_user(params)
    redirect_to :back
  end

  def online_candidates
    @online_candidate = User.online_users
  end

  def candidates
    #render text: params.inspect and return
    @candidates = User.of_type("candidate")
  end

end

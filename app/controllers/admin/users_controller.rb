class Admin::UsersController < BaseAdminController

  # Send invitation to user
  def send_invitation_to_candidate
    User.send_invitation(params, current_user)
    redirect_to :back
  end

  # Resend invitation for online test
  def resend_invitation
    user = User.where(email: params[:email]).last
    return redirect_to :back if user.blank?
    User.resend_invitation_to_user(user, current_user)
    redirect_to :back
  end

  def online_candidates
    @online_candidate = User.online_users
  end

  def candidates
    @candidates = User.of_type("candidate")
  end

end

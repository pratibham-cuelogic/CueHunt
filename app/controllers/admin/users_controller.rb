class Admin::UsersController < BaseAdminController

  # Send invitation to user
  def send_invitation_to_candidate
    User.send_invitation(params[:email])
  end

end

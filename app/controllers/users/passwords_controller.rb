class Users::PasswordsController < Devise::PasswordsController

  layout 'admin/login'

  # The path used after sending reset password instructions
  def after_sending_reset_password_instructions_path_for(resource_name)
    new_session_path(resource_name,password_reset_link: 'sent') if is_navigational_format?
  end

end
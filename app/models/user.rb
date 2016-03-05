class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  belongs_to :role


  # Send invitation to candidate to join test
  def self.send_invitation(params)
    create(email: params['email'], full_name: params['full_name'], phone_no: params['phone_no'], password: 'cuehunt2016', password_confirmation: 'cuehunt2016',status: INVITATION_ACCEPTED)
  end

  # User role
  def is_admin?
    return true if role.blank?
    role.role_type == 'admin'? true : false
  end

  # Get list of online candidates
  def self.online_users
    where("last_seen_at >= ?", Time.now - 5.minutes)
  end

  def self.resend_invitation_to_user(params)
    user = where(id: params[:id]).last
    user.update_attributes(status: INVITED)
    AdminNotifier.resend_invitation_email(user.email)
  end

end

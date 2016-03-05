class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  belongs_to :role


  # Send invitation to candidate to join test
  def self.send_invitation(email)
    create(email: email.first, password: 'cuehunt2016', password_confirmation: 'cuehunt2016',status: INVITATION_ACCEPTED)
  end

  # User role
  def is_admin?
    return true if role.blank?
    role.role_type == 'admin'? true : false
  end

end

class User < ActiveRecord::Base

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :confirmable
  belongs_to :role
  has_many :user_sets

  # Send invitation to candidate to join test
  def self.send_invitation(params, invitee)
    user = new(email: params['email'].first, full_name: params['full_name'].first, phone_no: params['phone_no'].first, password: 'cuehunt2016', password_confirmation: 'cuehunt2016',status: INVITATION_ACCEPTED)
    if user.save
      user_set = UserSet.create_user_set(params[:technology_id] ,user.id, invitee.id)
      if user_set.present?
        question_ids = Question.order("RANDOM()").where(technology_id: params[:technology_id]).limit(10).collect(&:id)
        QuestionSet.create_set(question_ids, user_set.id)
      end
    end
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

  # Resend invitation
  def self.resend_invitation_to_user(params)
    user = where(id: params[:id]).last
    user.update_attributes(status: INVITED)
    AdminNotifier.resend_invitation_email(user.email)
  end

end

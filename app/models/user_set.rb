class UserSet < ActiveRecord::Base
  belongs_to :user
  belongs_to :technology

  # User model
  belongs_to :invitee, class_name: 'User', foreign_key: 'invitee_id'

  def self.create_user_set(technology_id ,user_id, invitee_id)
    create(technology_id: technology_id, user_id: user_id, invitee_id: invitee_id)
  end

end

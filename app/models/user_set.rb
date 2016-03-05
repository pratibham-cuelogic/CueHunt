class UserSet < ActiveRecord::Base
  belongs_to :user
  belongs_to :technology

  # User model
  belongs_to :invitee, class_name: 'User', foreign_key: 'invitee_id'
end

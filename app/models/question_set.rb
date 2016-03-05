class QuestionSet < ActiveRecord::Base
  belongs_to :user_set
  belongs_to :question
end

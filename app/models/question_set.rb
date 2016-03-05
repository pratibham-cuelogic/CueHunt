class QuestionSet < ActiveRecord::Base

  belongs_to :user_set
  belongs_to :question

  # Create question sets
  def self.create_set(question_ids, user_set_id)
    question_ids.each {|question_id|
      create(question_id: question_id, user_set_id: user_set_id)
    }
  end

end
